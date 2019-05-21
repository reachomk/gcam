.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$12;
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
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

.field private synthetic val$panoOptionToSetting:Lcom/google/common/collect/BiMap;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;Lcom/google/common/collect/BiMap;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$12;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    iput-object p2, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$12;->val$panoOptionToSetting:Lcom/google/common/collect/BiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onOptionSelected(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 252
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;

    .line 1255
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$12;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRND5P6ASJJ5T7N0T39DTN76GJ1E9AMILR9E9IN4EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$12;->val$panoOptionToSetting:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 252
    return-void
.end method
