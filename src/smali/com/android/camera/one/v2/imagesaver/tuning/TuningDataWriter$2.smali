.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;
.super Ljava/lang/Object;
.source "TuningDataWriter.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->writeToFileWhenComplete(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V
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
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

.field private synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$500(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Failed to write TotalCaptureResult"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 184
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1188
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$100(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataExtractor;->getTuningData(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_0

    .line 1191
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$200(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->val$filename:Ljava/lang/String;

    const-string v4, "bin"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1192
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1193
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1194
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1198
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$300(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 1199
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$200(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->val$filename:Ljava/lang/String;

    const-string v4, "txt"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    .line 1200
    :try_start_6
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1201
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 1203
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$400(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/debug/Toaster;

    move-result-object v0

    const-string v3, "Saved metadata"

    invoke-virtual {v0, v3}, Lcom/android/camera/debug/Toaster;->toastShort(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1204
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1209
    :goto_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1194
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_2
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :catch_1
    move-exception v0

    .line 1195
    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 1207
    :catch_2
    move-exception v0

    .line 1208
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$500(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    const-string v2, "Failed to write TotalCaptureResult"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1194
    :catch_3
    move-exception v2

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 1199
    :catch_4
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1204
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_2

    :try_start_e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :goto_4
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    :catch_5
    move-exception v0

    .line 1205
    :try_start_10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    .line 1204
    :catch_6
    move-exception v2

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1194
    :catchall_3
    move-exception v0

    goto :goto_1
.end method
