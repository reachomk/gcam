.class public final Lcom/android/camera/module/imageintent/state/StateIntentCompleted;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateIntentCompleted.java"


# instance fields
.field private final resultIntent:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/state/ImageIntentState;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 15
    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;->resultIntent:Lcom/google/common/base/Optional;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateIntentCompleted;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;->resultIntent:Lcom/google/common/base/Optional;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateIntentCompleted;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v2, Lcom/android/camera/module/imageintent/state/StateIntentCompleted$1;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/module/imageintent/state/StateIntentCompleted$1;-><init>(Lcom/android/camera/module/imageintent/state/StateIntentCompleted;Lcom/android/camera/app/AppController;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
