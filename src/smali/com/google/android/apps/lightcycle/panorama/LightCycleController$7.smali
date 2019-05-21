.class final Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writePictureToFileAsync([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private synthetic val$imageData:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->val$imageData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 857
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 858
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "imageFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isGalaxySz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->val$imageData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->val$imageData:[B

    array-length v4, v4

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 865
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 866
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 870
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 871
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2800(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->val$imageData:[B

    array-length v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Photo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " saved : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$2900(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 878
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$3000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$3100(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->alignNextImage(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$704(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)I

    .line 888
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;

    move-result-object v0

    .line 889
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$3200(Ljava/io/File;)D

    move-result-wide v2

    .line 888
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->onExposureUpdate(D)V

    .line 897
    :goto_1
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$7;->val$imageData:[B

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 892
    :catch_1
    move-exception v0

    .line 893
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 894
    :catch_2
    move-exception v0

    .line 895
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method
