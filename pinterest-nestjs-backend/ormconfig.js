module.exports = {
  host: process.env.DATABASE_HOST,
  type: DATABASE_TYPE,
  port: process.env.DATABASE_PORT,
  username: process.env.DATABASE_USERNAME,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_DB_NAME,
  synchronize: true,
  logging: true,
  entities: [__dirname + '/src/**/*.entity{.ts,.js}'],
};
