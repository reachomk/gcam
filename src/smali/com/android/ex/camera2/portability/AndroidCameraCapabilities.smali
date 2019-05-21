.class final Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$1;,
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;,
        Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;
    }
.end annotation


# instance fields
.field private mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

.field private mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamCapabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 37
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(B)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(B)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxExposureCompensation:I

    .line 43
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMinExposureCompensation:I

    .line 44
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mExposureCompensationStep:F

    .line 45
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFacesSupported:I

    .line 46
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    .line 47
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mPreferredPreviewSizeForVideo:Lcom/android/ex/camera2/portability/Size;

    .line 48
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mHorizontalViewAngle:F

    .line 51
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mVerticalViewAngle:F

    .line 1090
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1098
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_1

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1101
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1108
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_2

    .line 1110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1111
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1118
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_3

    .line 1120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1121
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1124
    :cond_3
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1129
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_15

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1132
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1133
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1134
    :cond_5
    const-string v2, "action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1136
    :cond_6
    const-string v2, "barcode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1137
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1138
    :cond_7
    const-string v2, "beach"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1139
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1140
    :cond_8
    const-string v2, "candlelight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1141
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1142
    :cond_9
    const-string v2, "fireworks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1143
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1144
    :cond_a
    const-string v2, "hdr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1145
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1146
    :cond_b
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1147
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1148
    :cond_c
    const-string v2, "night"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1149
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1150
    :cond_d
    const-string v2, "night-portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1151
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT_PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1152
    :cond_e
    const-string v2, "party"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1153
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1154
    :cond_f
    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1155
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1156
    :cond_10
    const-string v2, "snow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1157
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1158
    :cond_11
    const-string v2, "sports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1159
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1160
    :cond_12
    const-string v2, "steadyphoto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1161
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1162
    :cond_13
    const-string v2, "sunset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1163
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1164
    :cond_14
    const-string v2, "theatre"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1172
    :cond_15
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 1173
    if-nez v0, :cond_18

    .line 1175
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1194
    :cond_16
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_24

    .line 1196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1197
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1198
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1177
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1178
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1179
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1180
    :cond_1a
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1181
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1182
    :cond_1b
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1183
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1184
    :cond_1c
    const-string v2, "red-eye"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1185
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1186
    :cond_1d
    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1187
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1199
    :cond_1e
    const-string v2, "continuous-picture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1200
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1201
    :cond_1f
    const-string v2, "continuous-video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1202
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1203
    :cond_20
    const-string v2, "edof"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1204
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1205
    :cond_21
    const-string v2, "fixed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1206
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1207
    :cond_22
    const-string v2, "infinity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->INFINITY:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1209
    :cond_23
    const-string v2, "macro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1210
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1217
    :cond_24
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1218
    if-eqz v0, :cond_2d

    .line 1219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1220
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1221
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1222
    :cond_26
    const-string v2, "cloudy-daylight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1223
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1224
    :cond_27
    const-string v2, "daylight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1225
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1226
    :cond_28
    const-string v2, "fluorescent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1227
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1228
    :cond_29
    const-string v2, "incandescent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1229
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1230
    :cond_2a
    const-string v2, "shade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1231
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1232
    :cond_2b
    const-string v2, "twilight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1233
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1234
    :cond_2c
    const-string v2, "warm-fluorescent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1235
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 61
    :cond_2d
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 62
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxZoomRatio:F

    .line 63
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2e
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 66
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2f
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 69
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_30
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 72
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_31
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 75
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    iput v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 76
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfFocusAreas:I

    if-lez v0, :cond_32

    .line 77
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_32
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mMaxNumOfMeteringArea:I

    if-lez v0, :cond_33

    .line 81
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_33
    return-void
.end method

.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 37
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;-><init>(B)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mFpsComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$FpsComparator;

    .line 38
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;-><init>(B)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;->mSizeComparator:Lcom/android/ex/camera2/portability/AndroidCameraCapabilities$SizeComparator;

    .line 87
    return-void
.end method
