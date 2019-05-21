.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$11;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$11;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 231
    check-cast p1, Ljava/lang/Integer;

    .line 1234
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$11;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->fromInt(I)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectGridLinesOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;)V

    .line 231
    return-void
.end method
