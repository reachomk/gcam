.class final Lcom/android/camera/ui/PreviewOverlay$1;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private maxZoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

.field final synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;

.field private zoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    .line 100
    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$000(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/PreviewOverlay$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PreviewOverlay$1$1;-><init>(Lcom/android/camera/ui/PreviewOverlay$1;)V

    .line 99
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->addThreadSafeCallback(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->maxZoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/PreviewOverlay$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PreviewOverlay$1$2;-><init>(Lcom/android/camera/ui/PreviewOverlay$1;)V

    .line 115
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->zoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 116
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->maxZoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1;->zoomCloseable:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 122
    return-void
.end method
