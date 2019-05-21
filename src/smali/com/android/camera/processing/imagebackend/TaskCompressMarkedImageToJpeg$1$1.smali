.class final Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;
.super Ljava/lang/Object;
.source "TaskCompressMarkedImageToJpeg.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->run()V
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
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 173
    check-cast p1, Lcom/google/common/base/Optional;

    .line 1176
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    iget-wide v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->id:J

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$inputImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->val$resultImage:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 1181
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    sget v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 1177
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskCompressMarkedImageToJpeg$1;->onUriResolved$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ31DPI74RR9CGNMSPBK5TAN4Q9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEP9AO______(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;I)V

    .line 173
    :cond_0
    return-void
.end method
