#
# Copyright (c) 2012 Nokia Corporation and/or its subsidiary(-ies).
# All rights reserved.
#
# For the applicable distribution terms see the license text file included in
# the distribution.
#

INCLUDEPATH += \
    $$PWD/../include \
    $$PWD/../platform/qt \
    $$PWD/../platform \
    $$PWD/../support \
    $$PWD/../cocoa \
    $$PWD/../kazmath/include \
    $$PWD/../actions \
    $$PWD/../base_nodes \
    $$PWD/../effects \
    $$PWD/../label_nodes \
    $$PWD/../sprite_nodes \
    $$PWD/../script_support \
    $$PWD/../shaders \
    $$PWD/../textures \
    $$PWD/../touch_dispatcher \
    $$PWD/../menu_nodes \
    $$PWD/../misc_nodes \
    $$PWD/../keypad_dispatcher \
    $$PWD/../layers_scenes_transitions_nodes \
    $$PWD/../particle_nodes \
    $$PWD/../tileMap_parallax_nodes \
    $$PWD/../text_input_node \
    $$PWD/../

unix:!symbian {
    LIBS += -lpthread -lEGL -lGLESv2
}

symbian {
    LIBS += -llibEGL -llibGLESv2
    LIBS += -lcone -leikcore -lavkon
}

contains(DEFINES,COCOS2DXQT_LIBRARY) {
    SOURCES += \
        $$PWD/../text_input_node/CCIMEDispatcher.cpp \
        $$PWD/../text_input_node/CCTextFieldTTF.cpp \
        $$PWD/../CCConfiguration.cpp \
        $$PWD/../support/zip_support/ZipUtils.cpp \
        $$PWD/../support/zip_support/ioapi.cpp \
        $$PWD/../support/zip_support/unzip.cpp \
        $$PWD/../support/CCVertex.cpp \
        $$PWD/../support/CCPointExtension.cpp \
        $$PWD/../support/CCProfiling.cpp \
        $$PWD/../support/base64.cpp \
        $$PWD/../support/ccUtils.cpp \
        $$PWD/../support/image_support/TGAlib.cpp \
        $$PWD/../support/CCUserDefault.cpp \
        $$PWD/../support/TransformUtils.cpp \
        $$PWD/../support/data_support/ccCArray.cpp \
        $$PWD/../tileMap_parallax_nodes/CCTMXObjectGroup.cpp \
        $$PWD/../tileMap_parallax_nodes/CCTMXTiledMap.cpp \
        $$PWD/../tileMap_parallax_nodes/CCParallaxNode.cpp \
        $$PWD/../tileMap_parallax_nodes/CCTMXLayer.cpp \
        $$PWD/../tileMap_parallax_nodes/CCTMXXMLParser.cpp \
        $$PWD/../tileMap_parallax_nodes/CCTileMapAtlas.cpp \
        $$PWD/../platform/CCEGLViewProtocol.cpp \
        $$PWD/../platform/platform.cpp \
        $$PWD/../platform/CCThread.cpp \
        $$PWD/../actions/CCActionManager.cpp \
        $$PWD/../actions/CCActionCamera.cpp \
        $$PWD/../actions/CCActionInterval.cpp \
        $$PWD/../actions/CCActionTiledGrid.cpp \
        $$PWD/../actions/CCActionTween.cpp \
        $$PWD/../actions/CCActionPageTurn3D.cpp \
        $$PWD/../actions/CCActionEase.cpp \
        $$PWD/../actions/CCActionGrid3D.cpp \
        $$PWD/../actions/CCAction.cpp \
        $$PWD/../actions/CCActionProgressTimer.cpp \
        $$PWD/../actions/CCActionGrid.cpp \
        $$PWD/../actions/CCActionInstant.cpp \
        $$PWD/../actions/CCActionCatmullRom.cpp \
        $$PWD/../label_nodes/CCLabelBMFont.cpp \
        $$PWD/../label_nodes/CCLabelTTF.cpp \
        $$PWD/../label_nodes/CCLabelAtlas.cpp \
        $$PWD/../layers_scenes_transitions_nodes/CCTransitionProgress.cpp \
        $$PWD/../layers_scenes_transitions_nodes/CCScene.cpp \
        $$PWD/../layers_scenes_transitions_nodes/CCLayer.cpp \
        $$PWD/../layers_scenes_transitions_nodes/CCTransition.cpp \
        $$PWD/../layers_scenes_transitions_nodes/CCTransitionPageTurn.cpp \
        $$PWD/../base_nodes/CCNode.cpp \
        $$PWD/../base_nodes/CCAtlasNode.cpp \
        $$PWD/../extensions/CCBReader/CCBFileLoader.cpp \
        $$PWD/../extensions/CCBReader/CCBReader.cpp \
        $$PWD/../extensions/CCBReader/CCControlButtonLoader.cpp \
        $$PWD/../extensions/CCBReader/CCControlLoader.cpp \
        $$PWD/../extensions/CCBReader/CCLabelBMFontLoader.cpp \
        $$PWD/../extensions/CCBReader/CCLabelTTFLoader.cpp \
        $$PWD/../extensions/CCBReader/CCLayerColorLoader.cpp \
        $$PWD/../extensions/CCBReader/CCLayerGradientLoader.cpp \
        $$PWD/../extensions/CCBReader/CCLayerLoader.cpp \
        $$PWD/../extensions/CCBReader/CCMenuItemImageLoader.cpp \
        $$PWD/../extensions/CCBReader/CCMenuItemLoader.cpp \
        $$PWD/../extensions/CCBReader/CCNodeLoader.cpp \
        $$PWD/../extensions/CCBReader/CCNodeLoaderLibrary.cpp \
        $$PWD/../extensions/CCBReader/CCParticleSystemQuadLoader.cpp \
        $$PWD/../extensions/CCBReader/CCScale9SpriteLoader.cpp \
        $$PWD/../extensions/CCBReader/CCScrollViewLoader.cpp \
        $$PWD/../extensions/CCBReader/CCSpriteLoader.cpp \
        $$PWD/../extensions/CCControlExtension/CCControl.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlButton.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlColourPicker.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlHuePicker.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlSlider.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlSwitch.cpp \
        $$PWD/../extensions/CCControlExtension/CCControlUtils.cpp \
        $$PWD/../extensions/CCControlExtension/CCInvocation.cpp \
        $$PWD/../extensions/CCControlExtension/CCMenuPassive.cpp \
        $$PWD/../extensions/CCControlExtension/CCScale9Sprite.cpp \
        $$PWD/../extensions/CCControlExtension/CCSpacer.cpp \
        $$PWD/../extensions/CCListView/CCListView.cpp \
        $$PWD/../extensions/CCListView/CCListViewCell.cpp \
        $$PWD/../extensions/CCNotificationCenter/CCNotificationCenter.cpp \
        $$PWD/../extensions/CCTextureWatcher/CCTextureWatcher.cpp \
        $$PWD/../extensions/CCScrollView/CCScrollView.cpp \
        $$PWD/../cocos2d.cpp \
        $$PWD/../script_support/CCScriptSupport.cpp \
        $$PWD/../kazmath/src/plane.c \
        $$PWD/../kazmath/src/ray2.c \
        $$PWD/../kazmath/src/vec4.c \
        $$PWD/../kazmath/src/quaternion.c \
        $$PWD/../kazmath/src/vec2.c \
        $$PWD/../kazmath/src/mat4.c \
        $$PWD/../kazmath/src/mat3.c \
        $$PWD/../kazmath/src/neon_matrix_impl.c \
        $$PWD/../kazmath/src/GL/matrix.c \
        $$PWD/../kazmath/src/GL/mat4stack.c \
        $$PWD/../kazmath/src/vec3.c \
        $$PWD/../kazmath/src/utility.c \
        $$PWD/../kazmath/src/aabb.c \
        $$PWD/../menu_nodes/CCMenuItem.cpp \
        $$PWD/../menu_nodes/CCMenu.cpp \
        $$PWD/../CCDrawingPrimitives.cpp \
        $$PWD/../particle_nodes/CCParticleSystemQuad.cpp \
        $$PWD/../particle_nodes/CCParticleSystem.cpp \
        $$PWD/../particle_nodes/CCParticleExamples.cpp \
        $$PWD/../particle_nodes/CCParticleBatchNode.cpp \
        $$PWD/../keypad_dispatcher/CCKeypadDelegate.cpp \
        $$PWD/../keypad_dispatcher/CCKeypadDispatcher.cpp \
        $$PWD/../shaders/CCGLProgram.cpp \
        $$PWD/../shaders/ccShaders.cpp \
        $$PWD/../shaders/CCShaderCache.cpp \
        $$PWD/../shaders/ccGLStateCache.cpp \
        $$PWD/../CCScheduler.cpp \
        $$PWD/../misc_nodes/CCProgressTimer.cpp \
        $$PWD/../misc_nodes/CCMotionStreak.cpp \
        $$PWD/../misc_nodes/CCRenderTexture.cpp \
        $$PWD/../cocoa/CCGeometry.cpp \
        $$PWD/../cocoa/CCAutoreleasePool.cpp \
        $$PWD/../cocoa/CCAffineTransform.cpp \
        $$PWD/../cocoa/CCString.cpp \
        $$PWD/../cocoa/CCObject.cpp \
        $$PWD/../cocoa/CCArray.cpp \
        $$PWD/../cocoa/CCDictionary.cpp \
        $$PWD/../cocoa/CCNS.cpp \
        $$PWD/../cocoa/CCZone.cpp \
        $$PWD/../cocoa/CCSet.cpp \
        $$PWD/../textures/CCTexture2D.cpp \
        $$PWD/../textures/CCTextureCache.cpp \
        $$PWD/../textures/CCTexturePVR.cpp \
        $$PWD/../textures/CCTextureAtlas.cpp \
        $$PWD/../sprite_nodes/CCSpriteBatchNode.cpp \
        $$PWD/../sprite_nodes/CCSprite.cpp \
        $$PWD/../sprite_nodes/CCSpriteFrame.cpp \
        $$PWD/../sprite_nodes/CCAnimationCache.cpp \
        $$PWD/../sprite_nodes/CCAnimation.cpp \
        $$PWD/../sprite_nodes/CCSpriteFrameCache.cpp \
        $$PWD/../touch_dispatcher/CCTouchHandler.cpp \
        $$PWD/../touch_dispatcher/CCTouchDispatcher.cpp \
        $$PWD/../CCCamera.cpp \
        $$PWD/../effects/CCGrid.cpp \
        $$PWD/../effects/CCGrabber.cpp \
        $$PWD/../CCDirector.cpp

    SOURCES += \
        $$PWD/../platform/qt/CCImage.cpp \
        $$PWD/../platform/qt/CCFileUtils.cpp \
        $$PWD/../platform/qt/CCEGLView.cpp \
        $$PWD/../platform/qt/CCApplication.cpp \
        $$PWD/../platform/qt/CCAccelerometer.cpp \
        $$PWD/../platform/qt/accelerometerfilter.cpp \
        $$PWD/../platform/qt/CCSAXParser.cpp \
        $$PWD/../platform/qt/CCCommon.cpp

    PUBLIC_HEADERS = \
        $$PWD/../text_input_node/CCIMEDelegate.h \
        $$PWD/../text_input_node/CCIMEDispatcher.h \
        $$PWD/../text_input_node/CCTextFieldTTF.h \
        $$PWD/../support/zip_support/ZipUtils.h \
        $$PWD/../support/zip_support/unzip.h \
        $$PWD/../support/zip_support/ioapi.h \
        $$PWD/../support/CCPointExtension.h \
        $$PWD/../support/CCUserDefault.h \
        $$PWD/../support/data_support/ccCArray.h \
        $$PWD/../support/data_support/utlist.h \
        $$PWD/../support/data_support/uthash.h \
        $$PWD/../support/TransformUtils.h \
        $$PWD/../support/CCVertex.h \
        $$PWD/../support/ccUtils.h \
        $$PWD/../support/image_support/TGAlib.h \
        $$PWD/../support/CCProfiling.h \
        $$PWD/../support/base64.h \
        $$PWD/../tileMap_parallax_nodes/CCParallaxNode.h \
        $$PWD/../tileMap_parallax_nodes/CCTMXObjectGroup.h \
        $$PWD/../tileMap_parallax_nodes/CCTileMapAtlas.h \
        $$PWD/../tileMap_parallax_nodes/CCTMXLayer.h \
        $$PWD/../tileMap_parallax_nodes/CCTMXXMLParser.h \
        $$PWD/../tileMap_parallax_nodes/CCTMXTiledMap.h \
        $$PWD/../platform/CCThread.h \
        $$PWD/../platform/platform.h \
        $$PWD/../platform/CCFileUtils.h \
        $$PWD/../platform/CCSAXParser.h \
        $$PWD/../platform/CCApplicationProtocol.h \
        $$PWD/../platform/CCPlatformConfig.h \
        $$PWD/../platform/CCEGLViewProtocol.h \
        $$PWD/../platform/CCFileUtilsCommon_cpp.h \
        $$PWD/../platform/CCCommon.h \
        $$PWD/../platform/CCImage.h \
        $$PWD/../platform/CCImageCommon_cpp.h \
        $$PWD/../platform/CCAccelerometerDelegate.h \
        $$PWD/../platform/CCPlatformMacros.h \
        $$PWD/../actions/CCAction.h \
        $$PWD/../actions/CCActionInterval.h \
        $$PWD/../actions/CCActionGrid3D.h \
        $$PWD/../actions/CCActionEase.h \
        $$PWD/../actions/CCActionPageTurn3D.h \
        $$PWD/../actions/CCActionProgressTimer.h \
        $$PWD/../actions/CCActionGrid.h \
        $$PWD/../actions/CCActionCamera.h \
        $$PWD/../actions/CCActionInstant.h \
        $$PWD/../actions/CCActionTiledGrid.h \
        $$PWD/../actions/CCActionTween.h \
        $$PWD/../actions/CCActionManager.h \
        $$PWD/../actions/CCActionCatmullRom.h \
        $$PWD/../label_nodes/CCLabelBMFont.h \
        $$PWD/../label_nodes/CCLabelAtlas.h \
        $$PWD/../label_nodes/CCLabelTTF.h \
        $$PWD/../layers_scenes_transitions_nodes/CCLayer.h \
        $$PWD/../layers_scenes_transitions_nodes/CCScene.h \
        $$PWD/../layers_scenes_transitions_nodes/CCTransition.h \
        $$PWD/../layers_scenes_transitions_nodes/CCTransitionProgress.h \
        $$PWD/../layers_scenes_transitions_nodes/CCTransitionPageTurn.h \
        $$PWD/../base_nodes/CCAtlasNode.h \
        $$PWD/../base_nodes/CCNode.h \
        $$PWD/../extensions/CCBReader/CCBFileLoader.h \
        $$PWD/../extensions/CCBReader/CCBMemberVariableAssigner.h \
        $$PWD/../extensions/CCBReader/CCBSelectorResolver.h \
        $$PWD/../extensions/CCBReader/CCControlButtonLoader.h \
        $$PWD/../extensions/CCBReader/CCControlLoader.h \
        $$PWD/../extensions/CCBReader/CCLabelBMFontLoader.h \
        $$PWD/../extensions/CCBReader/CCLabelTTFLoader.h \
        $$PWD/../extensions/CCBReader/CCLayerColorLoader.h \
        $$PWD/../extensions/CCBReader/CCLayerGradientLoader.h \
        $$PWD/../extensions/CCBReader/CCMenuItemImageLoader.h \
        $$PWD/../extensions/CCBReader/CCMenuItemLoader.h \
        $$PWD/../extensions/CCBReader/CCMenuLoader.h \
        $$PWD/../extensions/CCBReader/CCLayerLoader.h \
        $$PWD/../extensions/CCBReader/CCNodeLoader.h \
        $$PWD/../extensions/CCBReader/CCNodeLoaderLibrary.h \
        $$PWD/../extensions/CCBReader/CCNodeLoaderListener.h \
        $$PWD/../extensions/CCBReader/CCParticleSystemQuadLoader.h \
        $$PWD/../extensions/CCBReader/CCScale9SpriteLoader.h \
        $$PWD/../extensions/CCBReader/CCScrollViewLoader.h \
        $$PWD/../extensions/CCBReader/CCSpriteLoader.h \
        $$PWD/../extensions/CCControlExtension/CCControl.h \
        $$PWD/../extensions/CCControlExtension/CCControlButton.h \
        $$PWD/../extensions/CCControlExtension/CCControlColourPicker.h \
        $$PWD/../extensions/CCControlExtension/CCControlExtensions.h \
        $$PWD/../extensions/CCControlExtension/CCControlHuePicker.h \
        $$PWD/../extensions/CCControlExtension/CCControlSaturationBrightnessPicker.h \
        $$PWD/../extensions/CCControlExtension/CCControlSlider.h \
        $$PWD/../extensions/CCControlExtension/CCControlSwitch.h \
        $$PWD/../extensions/CCControlExtension/CCControlUtils.h \
        $$PWD/../extensions/CCControlExtension/CCInvocation.h \
        $$PWD/../extensions/CCControlExtension/CCMenuPassive.h \
        $$PWD/../extensions/CCControlExtension/CCScale9Sprite.h \
        $$PWD/../extensions/CCControlExtension/CCSpacer.h \
        $$PWD/../extensions/CCListView/CCControlDefine.h \
        $$PWD/../extensions/CCListView/CCListView.h \
        $$PWD/../extensions/CCListView/CCListViewCell.h \
        $$PWD/../extensions/CCNotificationCenter/CCNotificationCenter.h \
        $$PWD/../extensions/CCTextureWatcher/CCTextureWatcher.h \
        $$PWD/../extensions/CCScrollView/CCScrollView.h \
        $$PWD/../script_support/CCScriptSupport.h \
        $$PWD/../kazmath/include/kazmath/plane.h \
        $$PWD/../kazmath/include/kazmath/mat3.h \
        $$PWD/../kazmath/include/kazmath/vec3.h \
        $$PWD/../kazmath/include/kazmath/mat4.h \
        $$PWD/../kazmath/include/kazmath/aabb.h \
        $$PWD/../kazmath/include/kazmath/vec4.h \
        $$PWD/../kazmath/include/kazmath/kazmath.h \
        $$PWD/../kazmath/include/kazmath/neon_matrix_impl.h \
        $$PWD/../kazmath/include/kazmath/GL/mat4stack.h \
        $$PWD/../kazmath/include/kazmath/GL/matrix.h \
        $$PWD/../kazmath/include/kazmath/utility.h \
        $$PWD/../kazmath/include/kazmath/ray2.h \
        $$PWD/../kazmath/include/kazmath/quaternion.h \
        $$PWD/../kazmath/include/kazmath/vec2.h \
        $$PWD/../CCConfiguration.h \
        $$PWD/../menu_nodes/CCMenuItem.h \
        $$PWD/../menu_nodes/CCMenu.h \
        $$PWD/../include/cocos2dExt.h \
        $$PWD/../include/cocos2d.h \
        $$PWD/../include/ccConfig.h \
        $$PWD/../include/ccTypes.h \
        $$PWD/../include/CCProtocols.h \
        $$PWD/../include/CCEventType.h \
        $$PWD/../include/ccMacros.h \
        $$PWD/../particle_nodes/CCParticleBatchNode.h \
        $$PWD/../particle_nodes/CCParticleSystemQuad.h \
        $$PWD/../particle_nodes/CCParticleExamples.h \
        $$PWD/../particle_nodes/CCParticleSystem.h \
        $$PWD/../keypad_dispatcher/CCKeypadDelegate.h \
        $$PWD/../keypad_dispatcher/CCKeypadDispatcher.h \
        $$PWD/../shaders/ccShader_PositionTextureA8Color_frag.h \
        $$PWD/../shaders/CCShaderCache.h \
        $$PWD/../shaders/ccShader_PositionTextureColor_vert.h \
        $$PWD/../shaders/ccShader_PositionColor_vert.h \
        $$PWD/../shaders/CCGLProgram.h \
        $$PWD/../shaders/ccShader_PositionColor_frag.h \
        $$PWD/../shaders/ccShader_PositionTexture_frag.h \
        $$PWD/../shaders/ccShader_PositionTextureA8Color_vert.h \
        $$PWD/../shaders/ccShaderEx_SwitchMask_frag.h \
        $$PWD/../shaders/ccShader_PositionTexture_uColor_frag.h \
        $$PWD/../shaders/ccShader_PositionTexture_uColor_vert.h \
        $$PWD/../shaders/ccShader_PositionTextureColorAlphaTest_frag.h \
        $$PWD/../shaders/ccShader_PositionTexture_vert.h \
        $$PWD/../shaders/ccShader_PositionTextureColor_frag.h \
        $$PWD/../shaders/ccShader_Position_uColor_frag.h \
        $$PWD/../shaders/ccShaders.h \
        $$PWD/../shaders/ccShader_Position_uColor_vert.h \
        $$PWD/../shaders/ccGLStateCache.h \
        $$PWD/../CCDirector.h \
        $$PWD/../CCCamera.h \
        $$PWD/../CCScheduler.h \
        $$PWD/../misc_nodes/CCMotionStreak.h \
        $$PWD/../misc_nodes/CCProgressTimer.h \
        $$PWD/../misc_nodes/CCRenderTexture.h \
        $$PWD/../cocoa/CCAffineTransform.h \
        $$PWD/../cocoa/CCInteger.h \
        $$PWD/../cocoa/CCObject.h \
        $$PWD/../cocoa/CCAutoreleasePool.h \
        $$PWD/../cocoa/CCDictionary.h \
        $$PWD/../cocoa/CCSet.h \
        $$PWD/../cocoa/CCArray.h \
        $$PWD/../cocoa/CCNS.h \
        $$PWD/../cocoa/CCString.h \
        $$PWD/../cocoa/CCGeometry.h \
        $$PWD/../cocoa/CCZone.h \
        $$PWD/../textures/CCTextureCache.h \
        $$PWD/../textures/CCTexture2D.h \
        $$PWD/../textures/CCTextureAtlas.h \
        $$PWD/../textures/CCTexturePVR.h \
        $$PWD/../sprite_nodes/CCAnimation.h \
        $$PWD/../sprite_nodes/CCAnimationCache.h \
        $$PWD/../sprite_nodes/CCSpriteFrame.h \
        $$PWD/../sprite_nodes/CCSpriteFrameCache.h \
        $$PWD/../sprite_nodes/CCSpriteBatchNode.h \
        $$PWD/../sprite_nodes/CCSprite.h \
        $$PWD/../touch_dispatcher/CCTouchHandler.h \
        $$PWD/../touch_dispatcher/CCTouchDelegateProtocol.h \
        $$PWD/../touch_dispatcher/CCTouchDispatcher.h \
        $$PWD/../touch_dispatcher/CCTouch.h \
        $$PWD/../CCDrawingPrimitives.h \
        $$PWD/../effects/CCGrid.h \
        $$PWD/../effects/CCGrabber.h

    HEADERS += $${PUBLIC_HEADERS}

    HEADERS += \
        $$PWD/../platform/qt/CCPlatformDefine.h \
        $$PWD/../platform/qt/CCApplication.h \
        $$PWD/../platform/qt/CCGL.h \
        $$PWD/../platform/qt/CCStdC.h \
        $$PWD/../platform/qt/CCEGLView.h \
        $$PWD/../platform/qt/accelerometerfilter.h \
        $$PWD/../platform/qt/CCAccelerometer.h \

    HEADERS += \
        $$PWD/../effects/CCGrid.h \
        $$PWD/../effects/CCGrabber.h \
        $$PWD/../cocoa/CCNS.h \
        $$PWD/../support/TransformUtils.h \
        $$PWD/../support/ccUtils.h \
        $$PWD/../support/base64.h \
        $$PWD/../support/image_support/TGAlib.h \
        $$PWD/../support/zip_support/ZipUtils.h \
        $$PWD/../support/zip_support/unzip.h \
        $$PWD/../support/zip_support/ioapi.h
}
