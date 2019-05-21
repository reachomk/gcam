.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;
.super Ljava/lang/Object;
.source "OptionsBarUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/optionsbar/view/OptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/OptionsBarUiWirer;
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
.field private synthetic this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onOptionSelected(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 169
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    .line 1172
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ON:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    if-ne p1, v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$200(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/VideoTorchStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->setOn()V

    .line 1174
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$300(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/VideoTorchStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->setOn()V

    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->OFF:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    if-ne p1, v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$200(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/VideoTorchStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->setOff()V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$5;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$300(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/VideoTorchStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->setOff()V

    goto :goto_0
.end method
