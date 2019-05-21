.class final Lcom/android/camera/ui/wirers/EvCompUiWirer$2;
.super Ljava/lang/Object;
.source "EvCompUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/EvCompUiWirer;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/EvCompUiWirer;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer$2;->this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Boolean;

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer$2;->this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/EvCompUiWirer;->access$100(Lcom/android/camera/ui/wirers/EvCompUiWirer;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->hide()V

    .line 80
    :cond_0
    return-void
.end method
