.class public Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
.implements Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
        "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker;"
    }
.end annotation


# instance fields
.field private final captureState:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V
    .locals 2

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    sget-object v1, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/primitives/Floats;->captureState:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 1022
    iput-object p1, p0, Lcom/google/common/primitives/Floats;->delegate:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 1023
    return-void
.end method

.method static synthetic access$000([FFII)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    array-length v0, p0

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_0
.end method

.method private static indexOf([FFII)I
    .locals 2

    .prologue
    .line 139
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 140
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 144
    :goto_1
    return v0

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([FFII)I
    .locals 2

    .prologue
    .line 194
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 195
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 199
    :goto_1
    return v0

    .line 194
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setCaptureState(Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;)V
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/common/primitives/Floats;->captureState:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/common/primitives/Floats;->delegate:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureState()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/common/primitives/Floats;->captureState:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/primitives/Floats;->delegate:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 1029
    :try_start_0
    sget-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->RUNNING:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/Floats;->setCaptureState(Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;)V

    .line 1030
    iget-object v0, p0, Lcom/google/common/primitives/Floats;->delegate:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    sget-object v0, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/Floats;->setCaptureState(Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;)V

    .line 1033
    return-void

    .line 1032
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;->IDLE:Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;

    invoke-direct {p0, v1}, Lcom/google/common/primitives/Floats;->setCaptureState(Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;)V

    throw v0
.end method
