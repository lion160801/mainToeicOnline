package vn.myclass.core.service.impl;

import vn.myclass.core.dto.ExerciseDTO;
import vn.myclass.core.dto.ExerciseQuestionDTO;
import vn.myclass.core.persistence.entity.ExerciseEntity;
import vn.myclass.core.persistence.entity.ExerciseQuestionEntity;
import vn.myclass.core.service.ExerciseQuestionService;
import vn.myclass.core.service.utils.SingletonDaoUtil;
import vn.myclass.core.utils.ExerciseBeanUtil;
import vn.myclass.core.utils.ExerciseQuestionBeanUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ExerciseQuestionServiceImpl implements ExerciseQuestionService {
    @Override
    public Object[] findExerciseQuestionByProperties(Map<String, Object> property, String sortExpression, String sortDirection, Integer offset, Integer limit) {
        List<ExerciseQuestionDTO> result = new ArrayList<ExerciseQuestionDTO>();
        Object[] objects = SingletonDaoUtil.getExerciseQuestionDaoInstance().findByProperty(property,sortExpression,sortDirection,offset,limit,null);
        for (ExerciseQuestionEntity item: (List<ExerciseQuestionEntity>)objects[1]){
            ExerciseQuestionDTO dto = ExerciseQuestionBeanUtil.entity2Dto(item);
            dto.setExercise(ExerciseBeanUtil.entity2Dto(item.getExerciseEntity()));
            result.add(dto);
        }
        objects[1] = result;
        return objects;
    }
}
