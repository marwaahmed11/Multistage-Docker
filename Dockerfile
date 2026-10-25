FROM node:18-alpine as installer
WORKDIR /nodeapp
COPY nodeapp /nodeapp
RUN npm install


FROM node:18-alpine 
COPY --from=installer /nodeapp /nodeapp
EXPOSE 3000
CMD ["node", "/nodeapp/app.js"]




