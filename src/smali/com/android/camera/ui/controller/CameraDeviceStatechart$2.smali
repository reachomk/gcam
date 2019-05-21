.class final Lcom/android/camera/ui/controller/CameraDeviceStatechart$2;
.super Ljava/lang/Object;
.source "CameraDeviceStatechart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart;->postCloseOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->cameraClosed()V

    .line 240
    return-void
.end method
