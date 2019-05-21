.class final Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;
.super Ljava/lang/Object;
.source "SmartAfScannerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->triggerAfScan(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;ZLcom/google/android/apps/camera/aaa/FocusPoint;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 91
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    check-cast p2, Ljava/lang/Boolean;

    .line 1094
    invoke-static {}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->afConvergeFrameNumber:J

    iget-wide v4, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeStateConvergeFrameNumber:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x53

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "aeAfScanResult afConverge="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aeStateConverge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKRDC5P78GB6ADHM2RJECLP4IRBGDGTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 1097
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->access$200(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V

    .line 1100
    :cond_0
    const/4 v0, 0x0

    .line 91
    return-object v0
.end method
