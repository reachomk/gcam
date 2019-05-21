.class final Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;
.super Ljava/lang/Object;
.source "PhotoModeFocusController.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/PhotoModeFocusController$2;->onLongPress(Landroid/graphics/PointF;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/capture/PhotoModeFocusController$2;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/PhotoModeFocusController$2;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;->this$1:Lcom/android/camera/module/capture/PhotoModeFocusController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 144
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Boolean;

    .line 1133
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;->this$1:Lcom/android/camera/module/capture/PhotoModeFocusController$2;

    iget-object v0, v0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$402(Lcom/android/camera/module/capture/PhotoModeFocusController;Z)Z

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/camera/module/capture/PhotoModeFocusController$2$1;->this$1:Lcom/android/camera/module/capture/PhotoModeFocusController$2;

    iget-object v0, v0, Lcom/android/camera/module/capture/PhotoModeFocusController$2;->this$0:Lcom/android/camera/module/capture/PhotoModeFocusController;

    invoke-static {v0}, Lcom/android/camera/module/capture/PhotoModeFocusController;->access$500(Lcom/android/camera/module/capture/PhotoModeFocusController;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->showAffordance()V

    .line 130
    :cond_0
    return-void
.end method
