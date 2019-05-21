.class final Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;
.super Ljava/lang/Object;
.source "TaskCompressImageToJpeg.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->run()V
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
.field private synthetic this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

.field private synthetic val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field private synthetic val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 383
    check-cast p1, Lcom/google/common/base/Optional;

    .line 1386
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iget-wide v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->id:J

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 1388
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    sget v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEO_:I

    .line 1387
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onUriResolved$5154OORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN0SJFCDIN6SR9DPJIUQBDC5JMAOJ1CDLMARJ45TA62SRB95MM2PR58DNMST31D5N6ASH4AHGN6QQ9DLGMEP9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRB1CTIJMJ31DPI74RR9CGNMSPBK5TAN4Q9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75TKMQOB7CLH62ORBCLN68BQKC5PMMIBDC5JMAGRFDPQ62QBECLP28L31EDLKIRJ6DSI48PBJEHKMSOBKD5NMSEP9AO______(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;I)V

    .line 383
    :cond_0
    return-void
.end method
