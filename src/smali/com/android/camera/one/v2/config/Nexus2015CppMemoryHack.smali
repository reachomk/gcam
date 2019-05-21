.class public final Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack;
.super Ljava/lang/Object;
.source "Nexus2015CppMemoryHack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Nexus2015PostPrcsg"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static provideCaptureResultVerifier(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v0, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack;->TAG:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    .line 53
    const/4 v1, 0x4

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 57
    const/4 v2, 0x3

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/camera/one/v2/config/Nexus2015CppMemoryHack$1;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/camera/debug/Logger;)V

    invoke-static {v3}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method

.method public static providePreviewRequestTransformer()Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request$Parameter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 43
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method
