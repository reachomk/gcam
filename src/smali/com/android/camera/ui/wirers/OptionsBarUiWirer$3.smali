.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$3;
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

.field private synthetic val$hdrOptionToSetting:Lcom/google/common/collect/BiMap;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;Lcom/google/common/collect/BiMap;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$3;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    iput-object p2, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$3;->val$hdrOptionToSetting:Lcom/google/common/collect/BiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onOptionSelected(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 150
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    .line 1153
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$3;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$100(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/one/HdrPlusSetting;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$3;->val$hdrOptionToSetting:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/HdrPlusSetting;->update(Ljava/lang/Object;)V

    .line 150
    return-void
.end method
