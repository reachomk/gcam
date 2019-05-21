.class final Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/focus/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainHandler"
.end annotation


# instance fields
.field private manager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/focus/FocusOverlayManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/focus/FocusOverlayManager;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;->manager:Ljava/lang/ref/WeakReference;

    .line 122
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusOverlayManager$MainHandler;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/focus/FocusOverlayManager;

    .line 127
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusOverlayManager;->access$000(Lcom/android/camera/ui/focus/FocusOverlayManager;)V

    .line 135
    iget-object v0, v0, Lcom/android/camera/ui/focus/FocusOverlayManager;->listener:Lcom/android/camera/ui/focus/FocusOverlayManager$Listener;

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
