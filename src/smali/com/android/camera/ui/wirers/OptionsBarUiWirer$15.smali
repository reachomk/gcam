.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$15;
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
.field private synthetic this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$15;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Integer;

    .line 1294
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1295
    :goto_0
    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$15;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$800(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onEvCompSet()V

    :goto_1
    return-void

    .line 1294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$15;->this$0:Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;->access$800(Lcom/android/camera/ui/wirers/OptionsBarUiWirer;)Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onEvCompUnSet()V

    goto :goto_1
.end method
