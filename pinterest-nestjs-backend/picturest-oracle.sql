CREATE TABLE nguoi_dung (
  nguoi_dung_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  email VARCHAR2(255) NOT NULL,
  mat_khau VARCHAR2(255) NOT NULL,
  ho_ten VARCHAR2(255) NOT NULL,
  tuoi NUMBER NOT NULL,
  anh_dai_dien VARCHAR2(255),
  CONSTRAINT nguoi_dung_pk PRIMARY KEY (nguoi_dung_id)
);

INSERT INTO nguoi_dung (email, mat_khau, ho_ten, tuoi, anh_dai_dien)
VALUES
  ('user1@example.com', 'password1', 'John Doe', 25, 'avatar1.jpg'),
  ('user2@example.com', 'password2', 'Jane Smith', 30, 'avatar2.jpg'),
  ('user3@example.com', 'password3', 'Bob Johnson', 22, 'avatar3.jpg');


CREATE TABLE hinh_anh (
  hinh_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  ten_hinh VARCHAR2(255) NOT NULL,
  duong_dan VARCHAR2(255) NOT NULL,
  mo_ta VARCHAR2(255) NOT NULL,
  nguoi_dung_id NUMBER NOT NULL,
  CONSTRAINT hinh_anh_pk PRIMARY KEY (hinh_id),
  CONSTRAINT hinh_anh_fk FOREIGN KEY (nguoi_dung_id) REFERENCES nguoi_dung (nguoi_dung_id)
);

INSERT INTO hinh_anh (ten_hinh, duong_dan, mo_ta, nguoi_dung_id)
VALUES
  ('Image1', '/images/image1.jpg', 'Description for Image 1', 1), -- Assuming nguoi_dung_id 1 exists
  ('Image2', '/images/image2.jpg', 'Description for Image 2', 2), -- Assuming nguoi_dung_id 2 exists
  ('Image3', '/images/image3.jpg', 'Description for Image 3', 3); -- Assuming nguoi_dung_id 3 exists


CREATE TABLE luu_anh (
  luu_anh_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  nguoi_dung_id NUMBER NOT NULL,
  hinh_id NUMBER NOT NULL,
  ngay_luu DATE NOT NULL,
  CONSTRAINT luu_anh_pk PRIMARY KEY (luu_anh_id),
  CONSTRAINT luu_anh_fk_1 FOREIGN KEY (nguoi_dung_id) REFERENCES nguoi_dung (nguoi_dung_id),
  CONSTRAINT luu_anh_fk_2 FOREIGN KEY (hinh_id) REFERENCES hinh_anh (hinh_id)
);

INSERT INTO luu_anh (nguoi_dung_id, hinh_id, ngay_luu)
VALUES
  (1, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD')), -- Assuming nguoi_dung_id 1 and hinh_id 1 exist
  (2, 2, TO_DATE('2023-01-02', 'YYYY-MM-DD')), -- Assuming nguoi_dung_id 2 and hinh_id 2 exist
  (3, 3, TO_DATE('2023-01-03', 'YYYY-MM-DD')); -- Assuming nguoi_dung_id 3 and hinh_id 3 exist


CREATE TABLE binh_luan (
  binh_luan_id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  nguoi_dung_id NUMBER NOT NULL,
  hinh_id NUMBER NOT NULL,
  ngay_binh_luan DATE NOT NULL,
  noi_dung VARCHAR2(255) NOT NULL,
  CONSTRAINT binh_luan_pk PRIMARY KEY (binh_luan_id),
  CONSTRAINT binh_luan_fk_1 FOREIGN KEY (nguoi_dung_id) REFERENCES nguoi_dung (nguoi_dung_id),
  CONSTRAINT binh_luan_fk_2 FOREIGN KEY (hinh_id) REFERENCES hinh_anh (hinh_id)
);

INSERT INTO binh_luan (nguoi_dung_id, hinh_id, ngay_binh_luan, noi_dung)
VALUES
  (1, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Great photo!'), -- Assuming nguoi_dung_id 1 and hinh_id 1 exist
  (2, 2, TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'Nice shot!'), -- Assuming nguoi_dung_id 2 and hinh_id 2 exist
  (3, 3, TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'Beautiful picture!'); -- Assuming nguoi_dung_id 3 and hinh_id 3 exist
