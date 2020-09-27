import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides =  List<SliderModel>();
  SliderModel sliderModel =  SliderModel();

  //1
  sliderModel.setDesc("Online learning is rapidly becoming one of the most cost-effective ways to educate the world's rapidly expanding workforce");
  sliderModel.setTitle("Teach Digitally");
  sliderModel.setImageAssetPath("assets/image1.jpeg");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  //2
  sliderModel.setDesc("Attend Classes and Courses anywhere with a Computer and access to Internet.");
  sliderModel.setTitle("E Learning");
  sliderModel.setImageAssetPath("assets/image2.jpeg");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  //3
  sliderModel.setDesc("Register Or Login to Create an Account and Start Learning So that your Institute leads the Race");
  sliderModel.setTitle("Opportunity");
  sliderModel.setImageAssetPath("assets/image3.jpeg");
  slides.add(sliderModel);

  sliderModel =  SliderModel();

  return slides;
}