.class public final Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;
.super Ljava/lang/Object;
.source "CaptureModuleConfigBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final imageConfigSelector:Lcom/android/camera/module/ImageConfigSelector;

.field private final logger:Lcom/android/camera/debug/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "CptModuleCfgBldr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/module/ImageConfigSelector;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->imageConfigSelector:Lcom/android/camera/module/ImageConfigSelector;

    .line 25
    sget-object v0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->logger:Lcom/android/camera/debug/Logger;

    .line 26
    return-void
.end method


# virtual methods
.method public final buildConfigForCamera(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/module/OneModuleConfig;
    .locals 7

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->imageConfigSelector:Lcom/android/camera/module/ImageConfigSelector;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/ImageConfigSelector;->createConfigFromCameraId(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->logger:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Selected configuration for camera ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public final buildStartupConfig$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USH4ADQ62SJKELO46RREEHINGT1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJRECL6MUP3LDHIK6RRECPKMEEO_(Lcom/android/camera/advice/AdviceManagerImpl;)Lcom/android/camera/module/OneModuleConfig;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p1, Lcom/android/camera/advice/AdviceManagerImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->buildConfigForCamera(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v0

    return-object v0
.end method
