.class final Lcom/android/camera/one/v2/photo/commands/CommandSwitcher$2;
.super Ljava/lang/Object;
.source "CommandSwitcher.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/commands/CommandSwitcher;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/android/camera/one/v2/common/RequestTransformer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 1048
    invoke-interface {p1}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 45
    return-object v0
.end method
