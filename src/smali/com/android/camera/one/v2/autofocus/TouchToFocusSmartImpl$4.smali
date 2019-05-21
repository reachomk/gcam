.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;
.super Ljava/lang/Object;
.source "TouchToFocusSmartImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->delayThenSwitchToSceneDetectMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->access$300(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->access$600(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->setCallback(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method
