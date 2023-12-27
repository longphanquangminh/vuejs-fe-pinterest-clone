import { AppDataSource } from "../data-source";
import { NextFunction, Request, Response } from "express";
import { responseData } from "../config/Response";
import { HinhAnh } from "../entity/HinhAnh";
import { NguoiDung } from "../entity/NguoiDung";
import { decodeToken } from "../config/jwt";
import upload from "../config/upload";

export class HinhAnhController {
  private hinhAnhRepository = AppDataSource.getRepository(HinhAnh);
  private nguoiDungRepository = AppDataSource.getRepository(NguoiDung);

  async postPicture(request: Request, response: Response, next: NextFunction) {
    try {
      const { token } = request.headers;

      if (!token || token == "" || token == null || token == undefined) {
        responseData(response, "Chưa truyền token!", "", 400);
        return;
      }

      const accessToken = decodeToken(token);

      const user = await this.nguoiDungRepository.findOne({
        where: { nguoiDungId: accessToken.data.nguoiDungId },
      });

      if (!user) {
        responseData(response, "Token không hợp lệ!", "", 401);
        return;
      }
      const file = request.file;

      if (!file) {
        // Handle missing file
        responseData(response, "Chưa thêm hình", "", 400);
        return;
      }

      const { moTa, tenHinh } = request.body;
      if (!moTa) {
        responseData(response, "Chưa thêm mô tả hình", "", 400);
        return;
      }
      if (!tenHinh) {
        responseData(response, "Chưa thêm tên hình", "", 400);
        return;
      }
      const newPicture = Object.assign(new HinhAnh(), {
        moTa,
        tenHinh,
        duongDan: file.filename,
        nguoiDung: {
          nguoiDungId: accessToken.data.nguoiDungId,
        },
      });

      this.hinhAnhRepository.save(newPicture);

      responseData(response, "Thêm hình thành công", "", 200);
      return;
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }

  async deletePicture(request: Request, response: Response, next: NextFunction) {
    try {
      const { pictureId } = request.params;
      const picture = await this.hinhAnhRepository.findOne({
        where: {
          hinhId: +pictureId,
        },
        relations: {
          nguoiDung: true,
        },
      });
      if (!picture) {
        responseData(response, "Không tìm thấy hình ảnh để xóa!", "", 400);
        return;
      }
      const { token } = request.headers;

      if (!token || token == "" || token == null || token == undefined) {
        responseData(response, "Chưa truyền token!", "", 400);
        return;
      }

      const accessToken = decodeToken(token);

      const user = await this.nguoiDungRepository.findOne({
        where: { nguoiDungId: accessToken.data.nguoiDungId },
      });

      if (!user || accessToken.data.nguoiDungId !== picture.nguoiDung.nguoiDungId) {
        responseData(response, "Token không hợp lệ!", "", 401);
        return;
      }

      await this.hinhAnhRepository.remove(picture);
      responseData(response, "Xóa thành công", "", 200);
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }

  async getCreatedPicturesByUser(request: Request, response: Response, next: NextFunction) {
    try {
      const userId = request.params.userId;

      const user = await this.nguoiDungRepository.findOne({
        where: { nguoiDungId: +userId },
      });

      if (!user) {
        responseData(response, "Người dùng không tồn tại!", "", 400);
        return;
      }

      const createdPictures = await this.hinhAnhRepository
        .createQueryBuilder("hinhAnh")
        .leftJoinAndSelect("hinhAnh.nguoiDung", "nguoiDung")
        .select(["hinhAnh", "nguoiDung.nguoiDungId", "nguoiDung.hoTen", "nguoiDung.anhDaiDien", "nguoiDung.tuoi", "nguoiDung.email"])
        .where({
          nguoiDung: {
            nguoiDungId: userId,
          },
        })
        .getMany();

      if (createdPictures.length === 0) {
        responseData(response, "Người dùng chưa tạo ảnh nào!", "", 400);
        return;
      }
      responseData(response, "Thành công", createdPictures, 200);
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }

  async getPictures(request: Request, response: Response, next: NextFunction) {
    try {
      const data = await this.hinhAnhRepository.find();
      responseData(response, "Thành công", data, 200);
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }

  async getPicturesByName(request: Request, response: Response, next: NextFunction) {
    try {
      const pictureName = request.params.pictureName;

      const queryPictures = await this.hinhAnhRepository
        .createQueryBuilder("hinh_anh")
        .where("LOWER(ten_hinh) LIKE LOWER(:ten_hinh)", { ten_hinh: `%${pictureName.toLowerCase()}%` })
        .leftJoinAndSelect("hinh_anh.nguoiDung", "nguoiDung")
        .select(["hinh_anh", "nguoiDung.nguoiDungId", "nguoiDung.hoTen", "nguoiDung.anhDaiDien", "nguoiDung.tuoi", "nguoiDung.email"])
        .getMany();

      if (queryPictures.length === 0) {
        responseData(response, "Không tìm thấy hình ảnh nào!", "", 400);
        return;
      }
      responseData(response, "Thành công", queryPictures, 200);
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }

  async getPicturesById(request: Request, response: Response, next: NextFunction) {
    try {
      const pictureId = request.params.pictureId;

      const picture = await this.hinhAnhRepository.findOne({
        where: {
          hinhId: +pictureId,
        },
        relations: {
          nguoiDung: true,
        },
      });
      delete picture.nguoiDung.matKhau;

      if (!picture) {
        responseData(response, "Không tìm thấy hình ảnh!", "", 400);
        return;
      }
      responseData(response, "Thành công", picture, 200);
    } catch {
      responseData(response, "Lỗi ...", "", 500);
    }
  }
}
