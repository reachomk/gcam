.class final Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;
.super Ljava/lang/Object;
.source "CameraDeviceStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/optionsbar/view/OptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
        "<",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onOptionSelected(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 203
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    .line 1216
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1221
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 1224
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 1227
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ON:Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
