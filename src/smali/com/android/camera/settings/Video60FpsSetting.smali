.class public final Lcom/android/camera/settings/Video60FpsSetting;
.super Lcom/google/android/apps/camera/async/TransformedProperty;
.source "Video60FpsSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedProperty",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedProperty;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final synthetic transformInput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 2024
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->FPS_60:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->FPS_30:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    goto :goto_0
.end method

.method protected final synthetic transformOutput(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    .line 1029
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->FPS_60:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 12
    return-object v0

    .line 1029
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
