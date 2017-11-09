package com.util;


import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by lenovo on  十一月
 */
public class FileUtils {
    public  static void saveMultipartFile(MultipartFile file, HttpServletRequest request){
        if( !file.isEmpty()) {
            try {
                String newPath = request.getSession().getServletContext().getRealPath("/") + "upload/"
                        + file.getOriginalFilename();
                file.transferTo(new File(newPath));
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
