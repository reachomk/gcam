.class final Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;
.super Ljava/lang/Object;
.source "SimplePreviewModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/preview/SimplePreviewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private synthetic val$runPreview:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;->val$runPreview:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 49
    check-cast p1, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    .line 1054
    invoke-static {p1}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;->val$runPreview:Ljava/lang/Runnable;

    .line 1056
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 1053
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observables;->addCallback(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$1;->val$lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 49
    return-void
.end method
