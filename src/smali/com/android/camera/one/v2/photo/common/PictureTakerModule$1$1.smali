.class final Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1$1;
.super Ljava/lang/Object;
.source "PictureTakerModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->run()V
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
.field private synthetic this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1$1;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Boolean;

    .line 1054
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1$1;->this$0:Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/common/PictureTakerModule$1;->val$log:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ImageCaptureCommand Availability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 51
    return-void
.end method
