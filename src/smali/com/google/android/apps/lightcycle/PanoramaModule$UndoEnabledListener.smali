.class final Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UndoEnabledListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/Callback;"
    }
.end annotation


# instance fields
.field private handler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;->handler:Ljava/lang/ref/WeakReference;

    .line 564
    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 559
    check-cast p1, Ljava/lang/Boolean;

    .line 1568
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$UndoEnabledListener;->handler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1569
    goto :goto_0
.end method
