.class final Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened$1;
.super Ljava/lang/Object;
.source "CameraDeviceStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened$1;->this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened$1;->this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;

    iget-object v0, v0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0, p1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$1000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Ljava/lang/String;)V

    .line 166
    return-void
.end method
