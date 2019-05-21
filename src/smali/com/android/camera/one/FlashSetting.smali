.class public final Lcom/android/camera/one/FlashSetting;
.super Lcom/google/android/apps/camera/async/TransformedProperty;
.source "FlashSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedProperty",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
        ">;"
    }
.end annotation


# instance fields
.field private flashSupported:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/FlashSetting;->flashSupported:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 24
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/one/FlashSetting;->flashSupported:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected final synthetic transformInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 2029
    iget-boolean v0, p0, Lcom/android/camera/one/FlashSetting;->flashSupported:Z

    if-nez v0, :cond_0

    .line 2034
    sget-object v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    :goto_0
    return-object v0

    .line 2036
    :cond_0
    invoke-static {p1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic transformOutput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 1041
    invoke-virtual {p1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    .line 13
    return-object v0
.end method
