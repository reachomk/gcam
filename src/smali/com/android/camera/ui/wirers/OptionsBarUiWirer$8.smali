.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$8;
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
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$8;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onOptionSelected(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 205
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    .line 1208
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$8;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$500(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/settings/WhiteBalanceSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/settings/WhiteBalanceSetting;->update(Ljava/lang/Object;)V

    .line 205
    return-void
.end method
