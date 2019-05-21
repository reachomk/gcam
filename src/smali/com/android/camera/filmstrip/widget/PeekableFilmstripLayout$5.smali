.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$5;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$5;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception waiting to show filmstrip"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 345
    .line 1348
    invoke-static {}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip is ready to show."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$5;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$1000(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)V

    .line 345
    return-void
.end method
