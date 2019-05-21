.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$7;
.super Ljava/lang/Object;
.source "OptionsBarUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


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
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$7;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 193
    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    .line 1196
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$7;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectFpsOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;)V

    .line 193
    return-void
.end method
