NOME_PROJETO=$1

mkdir -p ../$NOME_PROJETO/src/middlewares
mkdir -p ../$NOME_PROJETO/src/controllers
mkdir -p ../$NOME_PROJETO/src/repositories
mkdir -p ../$NOME_PROJETO/src/schemas
mkdir -p ../$NOME_PROJETO/src/service

cp database.ts ../$NOME_PROJETO/src
cp index.ts ../$NOME_PROJETO/src
cp routes.ts ../$NOME_PROJETO/src
cp errorHandler.ts ../$NOME_PROJETO/src/middlewares
cp joiValidation.ts ../$NOME_PROJETO/src/middlewares
cp tsconfig.json ../$NOME_PROJETO

cd ../$NOME_PROJETO
npm init -y
npm i joi express dotenv jsonwebtoken cryptr bcrypt cors express-async-errors 
npm i typescript ts-node prisma nodemon -D
npm i @prisma/client
npx prisma init
npm i --save-dev @types/express
npm i --save-dev @types/cors



