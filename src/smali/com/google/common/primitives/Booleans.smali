.class public Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
    }
.end annotation


# instance fields
.field private final burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;

.field private final oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/google/common/primitives/Booleans;->burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;

    .line 1027
    iput-object p2, p0, Lcom/google/common/primitives/Booleans;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1028
    return-void
.end method

.method static synthetic access$000([ZZII)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    array-length v0, p0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    goto :goto_0
.end method

.method private static indexOf([ZZII)I
    .locals 2

    .prologue
    .line 116
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 117
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 121
    :goto_1
    return v0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([ZZII)I
    .locals 2

    .prologue
    .line 168
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 169
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 173
    :goto_1
    return v0

    .line 168
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public create(II)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1031
    new-array v0, v8, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v1, 0x5

    .line 1033
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/camera/one/v2/core/Request$Parameter;

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1036
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1039
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1040
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1041
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1042
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    const/4 v2, 0x5

    new-instance v3, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1046
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 1034
    invoke-static {v1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1032
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v1

    .line 1049
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v2, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->CONVERGED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 1050
    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v2, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 1051
    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withWhiteBalance(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    .line 1053
    iget-object v2, p0, Lcom/google/common/primitives/Booleans;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    sget-object v2, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 1056
    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    .line 1059
    :cond_0
    iget-object v2, p0, Lcom/google/common/primitives/Booleans;->burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->create(IILcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    return-object v0
.end method
