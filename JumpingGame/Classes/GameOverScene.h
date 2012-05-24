#ifndef __GAMEOVER_SCENE_H__
#define __GAMEOVER_SCENE_H__

#include "cocos2d.h"

class GameOver : public cocos2d::CCLayer
{
public:
    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();

    // there's no 'id' in cpp, so we recommand to return the exactly class pointer
    static cocos2d::CCScene* scene();

    // implement the "static node()" method manually
    LAYER_NODE_FUNC(GameOver);

    virtual bool ccTouchBegan(CCTouch* touch, CCEvent* event);

    void initBackground();
private:
};

#endif // __GAMEOVER_SCENE_H__