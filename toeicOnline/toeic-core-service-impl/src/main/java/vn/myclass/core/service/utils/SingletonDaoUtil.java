package vn.myclass.core.service.utils;

import vn.myclass.core.daoimpl.*;

public class SingletonDaoUtil {
    private static UserDaoImpl userDaoImpl = null;
    private static RoleDaoImpl roleDaoImpl = null;
    private static ListenGuidelineDaoImpl listenGuidelineDaoImpl = null;
    private static CommentDaoImpl commentDaoImp  = null;
    private static ExerciseDaoImpl exerciseDaoImpl = null;
    private static ExerciseQuestionDaoImpl exerciseQuestionDaoImpl = null;
    private static ExaminationDaoImpl examinationDaoImpl = null;
    private static ExaminationQuestionDaoImpl examinationQuestionDaoImpl = null;


    public static UserDaoImpl getUserDaoInstance(){
            if(userDaoImpl==null){
                userDaoImpl = new UserDaoImpl();
            }
            return userDaoImpl;
    }
    public static RoleDaoImpl getRoleDaoInstance(){
        if(roleDaoImpl==null){
            roleDaoImpl = new RoleDaoImpl();
        }
        return roleDaoImpl;
    }
    public static ListenGuidelineDaoImpl getListenGuidelineDaoInstance(){
        if(listenGuidelineDaoImpl==null){
            listenGuidelineDaoImpl = new ListenGuidelineDaoImpl();
        }
        return listenGuidelineDaoImpl;
    }

    public static CommentDaoImpl getCommentDaoInstance(){
        if(commentDaoImp==null){
            commentDaoImp = new CommentDaoImpl();
        }
        return commentDaoImp;
    }
    public static ExerciseDaoImpl getExerciseDaoInstance(){
        if(exerciseDaoImpl==null){
            exerciseDaoImpl = new ExerciseDaoImpl();
        }
        return exerciseDaoImpl;
    }
    public static ExerciseQuestionDaoImpl getExerciseQuestionDaoInstance(){
        if(exerciseQuestionDaoImpl==null){
            exerciseQuestionDaoImpl = new ExerciseQuestionDaoImpl();
        }
        return exerciseQuestionDaoImpl;
    }
    public static ExaminationDaoImpl getExaminationDaoInstance(){
        if(examinationDaoImpl==null){
            examinationDaoImpl = new ExaminationDaoImpl();
        }
        return examinationDaoImpl;
    }
    public static ExaminationQuestionDaoImpl getExaminationQuestionDaoInstance(){
        if(examinationQuestionDaoImpl==null){
            examinationQuestionDaoImpl = new ExaminationQuestionDaoImpl();
        }
        return examinationQuestionDaoImpl;
    }

}
