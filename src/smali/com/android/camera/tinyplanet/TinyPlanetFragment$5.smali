.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;
.super Landroid/os/AsyncTask;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment;->onCreateTinyPlanet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

.field private synthetic val$savingTinyPlanet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    iput-object p2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->val$savingTinyPlanet:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    .line 2307
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    move-result-object v0

    .line 299
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 299
    check-cast p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;

    .line 1313
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQ6IRJPE1M62RJ5EGNL8QBEF586OOBECLQ4CSJ1CTMMARJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2ORKD5R6IT3P8DNMST3IDTM6OPBI7C______(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getServices$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___()Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getMediaSaver()Lcom/android/camera/storage/MediaSaver;

    move-result-object v1

    .line 1314
    new-instance v11, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;

    invoke-direct {v11, p0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;-><init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;)V

    .line 1325
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 1326
    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TINYPLANET_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->jpegData:[B

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1330
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1331
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    iget v7, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->size:I

    iget v8, p1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$TinyPlanetImage;->size:I

    const/4 v9, 0x0

    .line 1335
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v10

    .line 1327
    invoke-interface/range {v1 .. v11}, Lcom/android/camera/storage/MediaSaver;->addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V

    .line 299
    return-void
.end method

.method protected final onPreExecute()V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-virtual {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->val$savingTinyPlanet:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 303
    return-void
.end method
