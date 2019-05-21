.class public final Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;
.super Ljava/lang/Object;
.source "CameraCaptureRequestBuilderFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aeTargetFpsChooser:Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;

.field private final observableAEMeteringRegion:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAFMeteringRegion:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAeLock:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAfModeIsContinuous:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAwbMode:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldContinuousAutoFocusOnDuringRecording:Z

.field private final shouldDetectFace:Z

.field private final shouldVideoStabilizationOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "CdrCamReqBdrFty"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->aeTargetFpsChooser:Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;

    .line 52
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAEMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 53
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAFMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 54
    iput-object p4, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    .line 55
    iput-object p5, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeLock:Lcom/google/android/apps/camera/async/Observable;

    .line 56
    iput-object p6, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAfModeIsContinuous:Lcom/google/android/apps/camera/async/Observable;

    .line 57
    iput-object p7, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    .line 58
    iput-object p8, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 59
    iput-object p9, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 60
    iput-boolean p10, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldContinuousAutoFocusOnDuringRecording:Z

    .line 61
    iput-boolean p11, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldDetectFace:Z

    .line 62
    iput-boolean p12, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldVideoStabilizationOn:Z

    .line 63
    return-void
.end method

.method private final applyBasicCaptureSettings(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldDetectFace:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 144
    :goto_0
    sget-object v3, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_MODE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 148
    iget-boolean v3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldDetectFace:Z

    if-eqz v3, :cond_1

    move v3, v2

    .line 151
    :goto_1
    sget-object v5, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "CONTROL_SCENE_MODE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 155
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-virtual {p1, v0, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeLock:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v3}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_AE_LOCK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeLock:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 163
    sget-object v3, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAEMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_AE_REGIONS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAEMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 165
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 164
    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_AE_EXPOSURE_COMPENSATION="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    .line 170
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 173
    sget-object v3, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAFMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_AF_REGIONS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAFMeteringRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 175
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 174
    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 178
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 178
    invoke-virtual {p1, v0, v3}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 182
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    .line 183
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 182
    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 186
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 187
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 186
    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 190
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldDetectFace:Z

    if-eqz v0, :cond_2

    move v0, v2

    .line 193
    :goto_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 197
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :goto_3
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x16

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FLASH_MODE="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 204
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldVideoStabilizationOn:Z

    if-eqz v0, :cond_4

    .line 208
    :goto_4
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CONTROL_VIDEO_STABILIZATION_MODE="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 209
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto/16 :goto_0

    :cond_1
    move v3, v4

    .line 150
    goto/16 :goto_1

    :cond_2
    move v0, v4

    .line 192
    goto :goto_2

    :cond_3
    move v1, v4

    .line 199
    goto :goto_3

    :cond_4
    move v2, v4

    .line 207
    goto :goto_4
.end method


# virtual methods
.method public final createPreviewRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 79
    .line 80
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v1

    .line 81
    invoke-direct {p0, v1}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->applyBasicCaptureSettings(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->aeTargetFpsChooser:Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;

    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;->getPreviewFpsRange()Landroid/util/Range;

    move-result-object v0

    .line 85
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 86
    sget-object v2, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CONTROL_AE_TARGET_FPS_RANGE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAfModeIsContinuous:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 90
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_0

    .line 93
    const/4 v0, 0x4

    .line 92
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    invoke-virtual {v1, v3, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CONTROL_AF_MODE=CONTINUOUS_PICTURE?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v1

    .line 94
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final createRecordRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 102
    .line 103
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v3

    .line 104
    invoke-direct {p0, v3}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->applyBasicCaptureSettings(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->aeTargetFpsChooser:Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;

    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;->getRecordFpsRange()Landroid/util/Range;

    move-result-object v0

    .line 108
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 109
    sget-object v4, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CONTROL_AE_TARGET_FPS_RANGE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->shouldContinuousAutoFocusOnDuringRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->observableAfModeIsContinuous:Lcom/google/android/apps/camera/async/Observable;

    .line 113
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 114
    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    .line 118
    :goto_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x1b

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CONTROL_AF_MODE="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v3

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1
.end method

.method public final createSnapshotRequestBuilder(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 125
    .line 127
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->getDevice()Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    move-result-object v0

    const/4 v1, 0x4

    .line 128
    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->applyBasicCaptureSettings(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;)V

    .line 132
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->aeTargetFpsChooser:Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;

    invoke-interface {v1}, Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;->getRecordFpsRange()Landroid/util/Range;

    move-result-object v1

    .line 133
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 134
    sget-object v2, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CONTROL_AE_TARGET_FPS_RANGE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method
