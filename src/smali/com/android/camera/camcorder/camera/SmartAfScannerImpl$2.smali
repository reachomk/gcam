.class final Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;
.super Ljava/lang/Object;
.source "SmartAfScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->delayThenSwitchToSceneDetectMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start monitor scene change"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->access$300(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->setListener(Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;)V

    .line 141
    return-void
.end method
