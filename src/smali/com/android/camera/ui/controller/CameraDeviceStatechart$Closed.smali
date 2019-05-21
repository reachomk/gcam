.class Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Closed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(S)V

    return-void
.end method


# virtual methods
.method public cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0, p1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$002(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 82
    invoke-static {v1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/settings/Settings;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    sget-object v3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    .line 85
    invoke-virtual {v3}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/camera/settings/Settings;->ofScopedString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOQJ1EPGIUR31DPJIUKRKE9KMSPPR55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    .line 90
    new-instance v0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed$1;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;)V

    invoke-interface {p3, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 97
    return-void
.end method
