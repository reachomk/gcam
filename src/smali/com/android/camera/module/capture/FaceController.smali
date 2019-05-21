.class public final Lcom/android/camera/module/capture/FaceController;
.super Ljava/lang/Object;
.source "FaceController.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACEANNOUNCER_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78L3IELIKCR31CSTG____:Lcom/android/camera/util/flags/CameraFlag;

.field private static final FACEBOXES_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final captureModuleUI:Lcom/android/camera/module/capture/CaptureModuleUI;

.field private final faceAnnouncer:Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

.field private final isFaceAnnouncerEnabled:Z

.field private final isFaceBoxesEnabled:Z

.field private final oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.faceboxes"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;ZB)V

    sput-object v0, Lcom/android/camera/module/capture/FaceController;->FACEBOXES_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    .line 25
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.faceannouncer"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/android/camera/module/capture/FaceController;->FACEANNOUNCER_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78L3IELIKCR31CSTG____:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/module/capture/CaptureModuleUI;Lcom/android/camera/util/flags/Flags;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 46
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->faceAnnouncer:Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    .line 47
    invoke-static {p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 48
    invoke-static {p4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/OrientationLockController;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 49
    invoke-static {p5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/OneModuleConfig;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    .line 50
    invoke-static {p6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/capture/CaptureModuleUI;

    iput-object v0, p0, Lcom/android/camera/module/capture/FaceController;->captureModuleUI:Lcom/android/camera/module/capture/CaptureModuleUI;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/capture/FaceController;->isFaceAnnouncerEnabled:Z

    .line 52
    sget-object v0, Lcom/android/camera/module/capture/FaceController;->FACEBOXES_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    invoke-virtual {p7, v0}, Lcom/android/camera/util/flags/Flags;->get$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNK2P328PM62PPR55D0____(Lcom/android/camera/util/flags/CameraFlag;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/capture/FaceController;->isFaceBoxesEnabled:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 22
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/handles/Handles;

    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/module/capture/FaceController;->isFaceAnnouncerEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/capture/FaceController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object v2

    .line 1100
    if-nez v2, :cond_4

    .line 1101
    new-array v1, v6, [Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/FaceController;->faceAnnouncer:Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;

    iget-object v2, p0, Lcom/android/camera/module/capture/FaceController;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1076
    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/module/capture/FaceController;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1077
    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/capture/FaceController;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 1078
    invoke-interface {v4}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/capture/FaceController;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1079
    invoke-interface {v5, v7}, Lcom/android/camera/one/OneCameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/module/capture/FaceController;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    iget-object v7, v7, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    .line 1074
    :cond_1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/camera/faceannouncer/FaceAnnouncer;->updateFaceAnnouncer([Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;Landroid/graphics/Rect;IIIZ)V

    .line 1065
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/capture/FaceController;->isFaceBoxesEnabled:Z

    if-eqz v0, :cond_3

    .line 2085
    iget-object v0, p0, Lcom/android/camera/module/capture/FaceController;->captureModuleUI:Lcom/android/camera/module/capture/CaptureModuleUI;

    iget-object v1, p0, Lcom/android/camera/module/capture/FaceController;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    iget-object v2, v1, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iget-object v1, p0, Lcom/android/camera/module/capture/FaceController;->oneModuleConfig:Lcom/android/camera/module/OneModuleConfig;

    iget-object v1, v1, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v3, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/module/capture/FaceController;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 2089
    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v4

    iget-object v1, p0, Lcom/android/camera/module/capture/FaceController;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 2090
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    move-object v1, p1

    .line 2085
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/capture/CaptureModuleUI;->setFaces$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2URB5EHGM8OBKC4NMCOB3CKNKCOB3CL26AT35CDQ6IRREA9IN6TBCEGTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H362OR9DPJJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UKR9F9IJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSEQ955B0____(Lcom/google/android/libraries/smartburst/utils/handles/Handles;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/google/android/apps/camera/util/layout/Orientation;I)V

    .line 22
    :cond_3
    return-void

    .line 1103
    :cond_4
    array-length v0, v2

    new-array v1, v0, [Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;

    move v0, v6

    .line 1104
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1105
    new-instance v3, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/camera/proxy/camera2/Camera2FaceProxy;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v1, v0

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
