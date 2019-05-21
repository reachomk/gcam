.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
.super Ljava/lang/Object;
.source "LightCycleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mAddNextFrame:Z

.field private mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private mAutoFocusInProgress:Z

.field private mBlankFrames:I

.field private mBlankPending:Z

.field private mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private mCurFieldOfViewDegrees:F

.field private mCurFieldOfViewDegreesScaled:F

.field private mCurrentFrameTexture:I

.field private mDeltaHeading:D

.field private final mDeltaHeadingStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mDeltaHeadingStep:D

.field private mDeviceFieldOfViewDegrees:F

.field private mDisablePhotoTaking:Z

.field private mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mFPSStartTime:J

.field private mFieldOfViewDegreesZoomStart:F

.field private mFinalizePhoto:Z

.field private mFrameCount:I

.field private mFrameHeight:I

.field private final mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private mFramePending:Z

.field private mFrameTransform:[F

.field private mFrameWidth:I

.field private mHoldStillStartTimeNs:J

.field private mHoldStillTargetHit:Z

.field private mHoldStillTimerStarted:Z

.field private mImageData:[B

.field private mInCalibrationMode:Z

.field private final mMVPMatrix:[F

.field private mMaxFieldOfViewDegrees:I

.field private final mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

.field private mMinFieldOfViewDegrees:I

.field private final mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

.field private final mModelView:[F

.field private mMovingTooFast:Z

.field private mOjbectsInitialized:Z

.field private mOrientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final mOrthographic:[F

.field private mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

.field private mPanoramaEmpty:Z

.field private final mPerspective:[F

.field private mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

.field private mPhotoInProgress:Z

.field private final mPhotoInProgressQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousFrameTexture:I

.field private mProcessedFrames:I

.field private mRenderBlankScreen:Z

.field private mRenderTexturedPreview:Z

.field private final mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

.field private mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

.field private final mRotate90:[F

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mStartMessage:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTargetAnimationPhase1:Z

.field private final mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

.field private mTargetsInitialized:Z

.field private final mTempMVPMatrix:[F

.field private final mTempMatrix:[F

.field private final mTestMatrix:[F

.field private mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

.field private mTexturesInitialized:Z

.field private mTiledGroundPlane:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

.field private mTransitionSetEnter:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

.field private mTransitionSetExit:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

.field private mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mUpdateTextures:Z

.field private mValidEstimate:Z

.field private mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

.field private mViewHeight:I

.field private mViewInitialized:Z

.field private mViewWidth:I

.field private mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mXOffset:I

.field private mYOffset:I

.field private mZooming:Z

.field private renderingStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Lcom/android/camera/burst/OrientationLockController;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x0

    const/16 v1, 0x10

    const/4 v4, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 104
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    .line 105
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    .line 106
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    .line 107
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    .line 108
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    .line 109
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    .line 110
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    .line 111
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    .line 112
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 114
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    .line 115
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    .line 118
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 119
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 120
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 121
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 122
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 123
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 126
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z

    .line 127
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewInitialized:Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 137
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 140
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 141
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 142
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 143
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    .line 147
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 150
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 151
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    .line 152
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 153
    sget v0, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 154
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetsInitialized:Z

    .line 155
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    .line 156
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAutoFocusInProgress:Z

    .line 157
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    .line 158
    sget v0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_HIT_TARGET_TO_START:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 163
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;-><init>(D)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 170
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 173
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 174
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 177
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 178
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 179
    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 182
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 190
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 191
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 192
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    .line 197
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    .line 198
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    .line 199
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    .line 200
    iput v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mProcessedFrames:I

    .line 203
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 212
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .line 214
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    .line 215
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 218
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/Reticle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAutoFocusInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method static synthetic access$400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN0OBEDTP62RB15T66IPR8EH1NIORCCL96ARJ4CLP6ASHR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEO_(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    return-object v0
.end method

.method private final drawScene(I)V
    .locals 13

    .prologue
    const/16 v0, 0xbe2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 578
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1507
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 1515
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 1516
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->getValue()D

    move-result-wide v4

    .line 1517
    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v6, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v3, v6, :cond_0

    .line 1518
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    if-eqz v0, :cond_d

    .line 1519
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    float-to-double v6, v0

    const-wide/high16 v10, 0x4032000000000000L    # 18.0

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 2492
    :cond_0
    :goto_0
    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v0, v4

    const v3, 0x3dcccccd    # 0.1f

    mul-float v5, v0, v3

    .line 2493
    mul-float v3, v5, v2

    .line 2494
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    neg-float v2, v3

    neg-float v4, v5

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1531
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1533
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 1534
    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getCcwDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 1535
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v2, v0, v2

    .line 1536
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    move v3, v9

    move v4, v9

    move v5, v12

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1537
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1540
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewInitialized:Z

    if-nez v0, :cond_1

    .line 2502
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v5, v2

    const/high16 v6, -0x3db80000    # -50.0f

    const/high16 v7, 0x42480000    # 50.0f

    move v2, v9

    move v4, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1545
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/Reticle;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/Reticle;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/sensor/SensorReader;II)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    .line 1548
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->init(IILcom/google/android/apps/lightcycle/panorama/Reticle;)V

    .line 1549
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 3343
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v2, 0x7f0200a6

    invoke-static {v0, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDrawableDimensions(Landroid/content/Context;I)Lcom/android/ex/camera2/portability/Size;

    move-result-object v0

    .line 3344
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3345
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    div-int/lit8 v2, v2, 0x2

    .line 3346
    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    div-int/lit8 v3, v3, 0x2

    .line 3348
    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, v3

    add-int v6, v2, v0

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3350
    new-instance v5, Landroid/graphics/PointF;

    int-to-float v3, v3

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-direct {v5, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3352
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 3353
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 3354
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f02014a

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3, v6, v12}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 3355
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f020149

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3, v6, v12}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 3356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPosition(Landroid/graphics/PointF;)V

    .line 3357
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPosition(Landroid/graphics/PointF;)V

    .line 3360
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3365
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 3366
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 1552
    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewInitialized:Z

    .line 3476
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutline(Z)V

    .line 3477
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_e

    .line 3479
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    .line 586
    :goto_2
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mProcessedFrames:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_f

    move v0, v8

    .line 587
    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v2

    if-nez v2, :cond_10

    if-eqz v0, :cond_10

    move v2, v8

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 588
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-nez v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutline(Z)V

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 596
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    .line 597
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isProcessingAlignment()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v8

    .line 596
    :goto_5
    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonEnabled(Z)V

    .line 4461
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4464
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 4465
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 604
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 605
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 608
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->drawObject([F)V

    .line 620
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 621
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->draw([F)V

    .line 626
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 627
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 628
    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getCcwDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 629
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v4, v0, v2

    .line 630
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 631
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 632
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 633
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    if-eqz v0, :cond_12

    .line 634
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->GREEN:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 638
    :goto_6
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v0, :cond_5

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 641
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCurrentOrientation([F)V

    .line 648
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTargetsOrthographic([F[F)V

    .line 4984
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v2, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetsInitialized:Z

    if-eqz v0, :cond_13

    .line 653
    :cond_6
    :goto_7
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 654
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 657
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 658
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 659
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 661
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->deviceOrientationStatus()I

    move-result v2

    .line 665
    if-nez v2, :cond_9

    .line 669
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->photoSkippedTooFast()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 674
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->photoSkippedTooFast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 681
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    if-eqz v0, :cond_9

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 683
    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    .line 684
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v4, v6

    if-lez v0, :cond_9

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    sget v3, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TOO_FAST:I

    const/16 v4, 0x2ee

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showShortMessageWithTimeout(II)V

    .line 692
    :cond_9
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    sget v3, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->WIDE_ANGLE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v0, v3, :cond_15

    :cond_a
    move v0, v8

    .line 696
    :goto_8
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v3, :cond_c

    if-nez v0, :cond_c

    .line 697
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    .line 5174
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v3

    .line 5175
    const/4 v4, 0x6

    aget v3, v3, v4

    neg-float v3, v3

    .line 5176
    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_1
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5178
    const v4, 0x3eb2b8c2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b

    .line 5179
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 5180
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 5181
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 5183
    :cond_b
    const v4, -0x414d473e

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 5184
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 5185
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 5186
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 701
    :cond_c
    :goto_9
    if-eqz v2, :cond_17

    .line 702
    const/4 v0, -0x1

    if-ne v2, v0, :cond_16

    .line 703
    :goto_a
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showRotateDeviceIcon(Z)V
    :try_end_3
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 712
    :goto_b
    return-void

    .line 1522
    :cond_d
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    float-to-double v6, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v4, v10, v4

    const-wide/high16 v10, 0x4032000000000000L    # 18.0

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    double-to-float v0, v4

    goto/16 :goto_0

    .line 3361
    :catch_0
    move-exception v0

    .line 3362
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_1

    .line 3482
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    goto/16 :goto_2

    :cond_f
    move v0, v1

    .line 586
    goto/16 :goto_3

    :cond_10
    move v2, v1

    .line 587
    goto/16 :goto_4

    :cond_11
    move v0, v1

    .line 597
    goto/16 :goto_5

    .line 636
    :cond_12
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->WHITE:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V
    :try_end_4
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_6

    .line 708
    :catch_1
    move-exception v0

    .line 709
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_b

    .line 4988
    :cond_13
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->getValue()D

    move-result-wide v10

    .line 4989
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4990
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    if-eqz v0, :cond_14

    .line 4992
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransitionSetExit:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    double-to-float v0, v10

    sub-float v3, v12, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-interface/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;->drawTargets$5135MHICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FE1GMSRRIC5MM2BQKC5P6EPBK9LGMSOB7CLP3MMQ6954IILG_(FLcom/google/android/apps/lightcycle/panorama/TargetManager;[FII)V

    .line 5002
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5003
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->start$5124OORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNMOQB7D1Q66UB3DHIIUS31DPNN4OBDC4NK2RJ9DLGN8QBFDP874RR6D5M6A921DPKMQOBKD5NMSGR1DHM64OB3DCTIILG_(DLandroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 5004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    goto/16 :goto_7

    .line 5008
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransitionSetEnter:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    double-to-float v3, v10

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-interface/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;->drawTargets$5135MHICCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRCD5JMGT33F5HMOP9FE1GMSRRIC5MM2BQKC5P6EPBK9LGMSOB7CLP3MMQ6954IILG_(FLcom/google/android/apps/lightcycle/panorama/TargetManager;[FII)V

    goto/16 :goto_7

    :cond_15
    move v0, v1

    .line 692
    goto/16 :goto_8

    .line 5188
    :catch_2
    move-exception v0

    .line 5189
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_9

    :cond_16
    move v8, v1

    .line 702
    goto/16 :goto_a

    .line 705
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideRotateDeviceIcon()V
    :try_end_5
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_b
.end method

.method private static getTransitionSet$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TO62RJFE9GMQO9FEHP62RJJD5Q6IRREECNKQRR3DDA62SJ7CLQ56PBK7C______(I)Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1262
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->HORIZONTAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p0, v1, :cond_1

    .line 1263
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;-><init>(Z)V

    .line 1273
    :cond_0
    :goto_0
    return-object v0

    .line 1264
    :cond_1
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->VERTICAL$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p0, v1, :cond_2

    .line 1265
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/transitions/SingleAxisTargetSet;-><init>(Z)V

    goto :goto_0

    .line 1266
    :cond_2
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-eq p0, v1, :cond_0

    .line 1268
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->FISHEYE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p0, v1, :cond_3

    .line 1269
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/transitions/FisheyeTargetSet;-><init>()V

    goto :goto_0

    .line 1270
    :cond_3
    sget v1, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->WIDE_ANGLE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne p0, v1, :cond_0

    .line 1271
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/transitions/WideAngleTargetSet;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/transitions/WideAngleTargetSet;-><init>()V

    goto :goto_0
.end method

.method private final declared-synchronized processFrame()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1020
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1025
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    .line 1029
    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->countdownFinished()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isPreviewActive()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    const/4 v5, 0x0

    .line 1025
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->processFrame([BIIZZ)V

    .line 1032
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mProcessedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mProcessedFrames:I

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate()Z

    move-result v0

    .line 7223
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    .line 8067
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->movingTooFast()Z

    move-result v1

    .line 1037
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 1042
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-nez v0, :cond_2

    .line 8949
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->getRotationEstimate()[F

    move-result-object v0

    .line 8950
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->addNewPhoto([F)I

    move-result v1

    .line 8955
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->addImage([F)Ljava/lang/String;

    move-result-object v2

    .line 8958
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 8959
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestPhoto([FIILjava/lang/String;)V

    .line 8963
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 8964
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 8971
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 8972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 8973
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V

    .line 8976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 8977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 1049
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    if-eqz v0, :cond_4

    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1054
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1055
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 1059
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->finalizeHitTargets()V

    .line 1060
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 1061
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCurrentPhotoIndex()I

    move-result v2

    .line 1060
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->updateCalibrationMessage(ZI)V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->countdownFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9052
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->targetHit()Z

    move-result v0

    .line 1073
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->deviceOrientationStatus()I

    move-result v1

    .line 1074
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAutoFocusInProgress:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    .line 1075
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->countdownRunning()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 1078
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isPreviewActive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAutoFocusInProgress:Z

    .line 1080
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 1081
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCameraSetupAgent()Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    .line 1082
    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/camera/CameraSetupAgent;->autoFocusIfRequired(Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1099
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-eqz v0, :cond_6

    .line 1100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->stopCountdown()V

    .line 1103
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v4, v5

    .line 1029
    goto/16 :goto_1

    .line 1090
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->countdownRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1092
    if-eqz v0, :cond_a

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    if-nez v0, :cond_a

    :cond_9
    if-eqz v1, :cond_5

    .line 1095
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->stopCountdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private final scaleFov(F)F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 565
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ge v0, v1, :cond_0

    .line 566
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 567
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 568
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 569
    double-to-float p1, v0

    .line 571
    :cond_0
    return p1
.end method

.method private static scaleFovWithLinearPerspectiveRatio(FF)F
    .locals 8

    .prologue
    .line 380
    const-wide v0, 0x405ca5dc1a63c1f8L    # 114.59155902616465

    float-to-double v2, p1

    float-to-double v4, p0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 381
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 380
    return v0
.end method

.method private final updateButtonVisibility()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisible(Z)V

    .line 1114
    return-void

    .line 1113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final updateFieldOfViewDegrees(F)V
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 333
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 334
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 336
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 337
    return-void
.end method


# virtual methods
.method public final createFrameDisplay([FII)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->generateGeometry([FIIF)V

    .line 324
    return-void
.end method

.method public final endPinchZoom(F)V
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 317
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 319
    return-void
.end method

.method public final finalizePhoto()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 299
    return-void
.end method

.method public final freeGLMemory()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1282
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z

    .line 1286
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->freeGLMemory()V

    .line 1289
    :cond_0
    new-array v0, v4, [I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    aput v2, v0, v1

    .line 1290
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1291
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getTexture()Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    move-result-object v0

    .line 1292
    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->freeGLMemory()V

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    if-eqz v0, :cond_3

    .line 1301
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;->freeGLMemory()V

    .line 1303
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    if-eqz v0, :cond_4

    .line 1304
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->freeGLMemory()V

    .line 1306
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    if-eqz v0, :cond_5

    .line 1307
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->freeGLMemory()V

    .line 1309
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v0, :cond_6

    .line 1310
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 1313
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    if-eqz v0, :cond_7

    .line 1314
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;->freeGLMemory()V

    .line 1316
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    if-eqz v0, :cond_8

    .line 1317
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mReticle:Lcom/google/android/apps/lightcycle/panorama/Reticle;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Reticle;->freeGLMemory()V

    .line 1319
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_9

    .line 1320
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 1322
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_a

    .line 1323
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 1325
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    if-eqz v0, :cond_b

    .line 1326
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->freeGLMemory()V

    .line 1328
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    if-eqz v0, :cond_c

    .line 1329
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->freeGLMemory()V

    .line 1331
    :cond_c
    return-void
.end method

.method public final initTargets([F)V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->initWithRotation([F)V

    .line 845
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetsInitialized:Z

    .line 846
    return-void
.end method

.method public final initTargetsWithSensor()V
    .locals 4

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->initWithRotation([F)V

    .line 831
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetsInitialized:Z

    .line 832
    return-void
.end method

.method public final isPhotoTakingInProgress()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 717
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-eqz v0, :cond_1

    .line 5730
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    if-eqz v0, :cond_0

    .line 5469
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 5729
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-nez v0, :cond_0

    .line 5733
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    if-nez v0, :cond_2

    .line 6120
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    .line 6123
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    .line 6124
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->initFrameTexture(III)V

    .line 6125
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->createTexture(I)V

    .line 6126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 6129
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 6130
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->initFrameTexture(III)V

    .line 6131
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 6132
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->initFrameTexture(III)V

    .line 5746
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    if-eqz v0, :cond_3

    .line 5752
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->processFrame()V

    .line 5755
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getEkfEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5757
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v0, :cond_9

    .line 5758
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 5769
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 5770
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setFilteredRotation([F)V

    .line 5778
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_6

    .line 5779
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->updateFrameTexture(I)V

    .line 5783
    :cond_6
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-lez v0, :cond_7

    .line 5784
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawScene(I)V

    .line 5788
    :cond_7
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 5789
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 5790
    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 5792
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 6158
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-nez v0, :cond_8

    .line 6159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    .line 6161
    :cond_8
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-eqz v0, :cond_0

    .line 6162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 6166
    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    goto/16 :goto_0

    .line 5759
    :cond_9
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_4

    .line 5761
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 5762
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 5763
    iput-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto :goto_1

    .line 5765
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 5766
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto/16 :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ne p3, v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 931
    :cond_0
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    .line 932
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    .line 933
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    .line 934
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    .line 935
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    .line 936
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    .line 940
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewInitialized:Z

    .line 941
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 918
    .line 6389
    :try_start_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 6390
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getFieldOfViewDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 6394
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    const v1, 0x3fd9999a    # 1.7f

    .line 6395
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFovWithLinearPerspectiveRatio(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 6396
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    const/high16 v1, 0x40200000    # 2.5f

    .line 6397
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFovWithLinearPerspectiveRatio(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 6398
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    const v1, 0x3f8ccccd    # 1.1f

    .line 6399
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFovWithLinearPerspectiveRatio(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 6400
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 6401
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 6404
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    .line 6405
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 6406
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    .line 6407
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 6408
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 6411
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;-><init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    .line 6414
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6415
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 6416
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    .line 6418
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ac

    .line 6417
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6419
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/LineTiledGroundPlaneDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .line 6422
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 6423
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 6425
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_1

    .line 6426
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawTextured(Z)V

    .line 6427
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutline(Z)V

    .line 6431
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 6432
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 6433
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    .line 6434
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 6435
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 6438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 6441
    sget-object v0, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_COLOR:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_COLOR:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_COLOR:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_COLOR:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 6446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOjbectsInitialized:Z

    .line 6448
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    if-eqz v0, :cond_2

    .line 6450
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->updateCalibrationMessage(ZI)V

    .line 6453
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 923
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public final pinchZoom(F)V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 313
    return-void
.end method

.method public final resetOrientation()V
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, v1

    .line 803
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->endPinchZoom(F)V

    .line 804
    return-void
.end method

.method public final resetTargets()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->reset()V

    .line 820
    :cond_0
    return-void
.end method

.method public final setAddNextFrame()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 247
    return-void
.end method

.method public final setCaptureMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP9AO______(I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    const/4 v4, 0x1

    .line 855
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 856
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCaptureMode$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    .line 857
    iput-boolean v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    .line 858
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_HIT_TARGET_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 859
    add-int/lit8 v1, p1, -0x1

    packed-switch v1, :pswitch_data_0

    .line 907
    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getTransitionSet$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TO62RJFE9GMQO9FEHP62RJJD5Q6IRREECNKQRR3DDA62SJ7CLQ56PBK7C______(I)Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransitionSetExit:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    .line 910
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->getTransitionSet$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKI46OBGEHQN4PADDTI6AEP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TO62RJFE9GMQO9FEHP62RJJD5Q6IRREECNKQRR3DDA62SJ7CLQ56PBK7C______(I)Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransitionSetEnter:Lcom/google/android/apps/lightcycle/panorama/transitions/MockTargetSet;

    .line 911
    return-void

    .line 861
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 862
    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCurrentPhotoIndex()I

    move-result v3

    .line 861
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->updateCalibrationMessage(ZI)V

    .line 863
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInCalibrationMode:Z

    goto :goto_0

    .line 867
    :pswitch_1
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TAP_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 868
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCaptureMode(I)V

    .line 870
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    .line 871
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->start$5124OORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNMOQB7D1Q66UB3DHIIUS31DPNN4OBDC4NK2RJ9DLGN8QBFDP874RR6D5M6A921DPKMQOBKD5NMSGR1DHM64OB3DCTIILG_(DLandroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    .line 875
    :pswitch_2
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TAP_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 876
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V

    .line 877
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCaptureMode(I)V

    .line 878
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    .line 879
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->start$5124OORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNMOQB7D1Q66UB3DHIIUS31DPNN4OBDC4NK2RJ9DLGN8QBFDP874RR6D5M6A921DPKMQOBKD5NMSGR1DHM64OB3DCTIILG_(DLandroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    .line 883
    :pswitch_3
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_TAP_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 884
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V

    .line 885
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCaptureMode(I)V

    .line 886
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    .line 887
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->start$5124OORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNMOQB7D1Q66UB3DHIIUS31DPNN4OBDC4NK2RJ9DLGN8QBFDP874RR6D5M6A921DPKMQOBKD5NMSGR1DHM64OB3DCTIILG_(DLandroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    .line 891
    :pswitch_4
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_HIT_TARGET_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 892
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V

    .line 893
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCaptureMode(I)V

    .line 894
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetAnimationPhase1:Z

    .line 895
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMockTargetAnimationProfile:Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/apps/lightcycle/panorama/AnimationProfile;->start$5124OORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNMOQB7D1Q66UB3DHIIUS31DPNN4OBDC4NK2RJ9DLGN8QBFDP874RR6D5M6A921DPKMQOBKD5NMSGR1DHM64OB3DCTIILG_(DLandroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    goto :goto_0

    .line 899
    :pswitch_5
    sget v1, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->MSG_HIT_TARGET_TO_START:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    .line 900
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageOverlay:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mStartMessage:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showShortMessage(I)V

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCaptureMode(I)V

    goto/16 :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 228
    return-void
.end method

.method public final setDisablePhotoTaking(Z)V
    .locals 0

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 292
    return-void
.end method

.method public final setFrameDimensions(II)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 233
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 234
    return-void
.end method

.method public final setImageData([B)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 240
    return-void
.end method

.method public final setLiveImageDisplay(Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 270
    return-void
.end method

.method public final setPhotoFinished()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 261
    return-void
.end method

.method public final setRenderingStopped(Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 277
    return-void
.end method

.method public final setSensorReader$51662RJ4E9NMIP1FEPKMATPF8HKN6S3CC5SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRJCLN76RRI5T9MARJJDTP54PB1CHIN4EP9AO______(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 251
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-direct {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 252
    return-void
.end method

.method public final declared-synchronized undoLastCapturedPhoto()V
    .locals 4

    .prologue
    .line 1195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    .line 1196
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->undoAddPhoto()V

    .line 1204
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1205
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1208
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1209
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 1210
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    const-wide v2, 0x4046800000000000L    # 45.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 1211
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1213
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 1217
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    .line 1247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1254
    :goto_1
    monitor-exit p0

    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
