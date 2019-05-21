.class public final Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "AutoFlashSelector.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
        ">;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
        ">;"
    }
.end annotation


# instance fields
.field private final flashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final flashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;->flashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 30
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;->flashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 31
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 16
    check-cast p1, Ljava/util/List;

    .line 1036
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 1037
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1039
    sget-object v2, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v2, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;->flashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 1042
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;->flashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/flash/AutoFlashSelector;->flashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    goto :goto_0
.end method
