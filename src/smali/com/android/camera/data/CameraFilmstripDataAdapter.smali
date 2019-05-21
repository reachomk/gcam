.class final Lcom/android/camera/data/CameraFilmstripDataAdapter;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final context:Landroid/content/Context;

.field private filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

.field private filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

.field private filmstripItems:Lcom/android/camera/data/FilmstripItemList;

.field private final glideFilmstripManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private lastPhotoId:J

.field private final metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

.field private final notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

.field private final photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final storage:Lcom/android/camera/storage/Storage;

.field private suggestedHeight:I

.field private suggestedWidth:I

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final videoItemFactory:Lcom/android/camera/data/VideoItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "CameraDataAdapter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/storage/Storage;Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;Lcom/android/camera/debug/trace/Trace;)V
    .locals 3

    .prologue
    const/16 v2, 0x640

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    .line 67
    iput v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedWidth:I

    .line 68
    iput v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedHeight:I

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->lastPhotoId:J

    .line 86
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->context:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 88
    iput-object p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 89
    iput-object p4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 90
    new-instance v0, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 91
    iput-object p5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 92
    iput-object p6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 93
    iput-object p7, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->glideFilmstripManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 94
    iput-object p8, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->storage:Lcom/android/camera/storage/Storage;

    .line 95
    iput-object p9, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    .line 96
    iput-object p10, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/GlideFilmstripManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->glideFilmstripManager:Lcom/android/camera/data/GlideFilmstripManager;

    return-object v0
.end method

.method static synthetic access$1400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQDCLQ62P31EHGKORR1CHIN4EO_(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V

    return-void
.end method

.method static synthetic access$1700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQ6D5M6QSRKE9KN0H31EHGKSRRKD5J6IPBI7C______(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/FilmstripItemList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->photoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/util/lifetime/ActivityLifetime;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->lastPhotoId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->lastPhotoId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->videoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemData;)Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->isInProgressBurstItem(Lcom/android/camera/data/FilmstripItemData;)Z

    move-result v0

    return v0
.end method

.method private final insertItem(Lcom/android/camera/data/FilmstripItem;)V
    .locals 3

    .prologue
    .line 319
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p1}, Lcom/android/camera/data/BurstItemData;->isItemPartOfBurst(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    new-instance v1, Lcom/android/camera/data/NewestFirstComparator;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/camera/data/NewestFirstComparator;-><init>(Ljava/util/Date;)V

    .line 328
    :goto_1
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/FilmstripItemList;->add(ILcom/android/camera/data/FilmstripItem;)V

    .line 330
    new-instance v1, Lcom/android/camera/data/CameraFilmstripDataAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$4;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V

    invoke-interface {p1, v1}, Lcom/android/camera/data/FilmstripItem;->setUpdateCallback$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94ALO68OBKCL1M2R3CC9GM6QPR55B0____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method private static isInProgressBurstItem(Lcom/android/camera/data/FilmstripItemData;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 784
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 786
    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 790
    :cond_1
    new-instance v1, Lcom/android/camera/burst/FrameSavingProgressMonitor;

    new-instance v2, Ljava/io/File;

    .line 791
    invoke-virtual {p0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/burst/FrameSavingProgressMonitor;-><init>(Ljava/io/File;)V

    .line 792
    invoke-virtual {v1}, Lcom/android/camera/burst/FrameSavingProgressMonitor;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    return-void

    .line 345
    :cond_1
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 346
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 348
    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter$5;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$5;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V

    invoke-interface {v1, v2}, Lcom/android/camera/data/FilmstripItem;->setUpdateCallback$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94ALO68OBKCL1M2R3CC9GM6QPR55B0____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final updateMetadataAt(Landroid/net/Uri;Z)Landroid/os/AsyncTask;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Z)V

    .line 146
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 4

    .prologue
    .line 206
    sget-object v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "adding filmstrip data listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemsLoaded()V

    .line 211
    :cond_0
    return-void
.end method

.method public final addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 5

    .prologue
    .line 232
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 235
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 237
    sget-object v2, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "found duplicate data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->insertItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final cancelItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 372
    if-eqz v0, :cond_0

    .line 373
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 376
    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemsLoaded()V

    .line 282
    return-void
.end method

.method public final executeDeletion()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 268
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    if-nez v2, :cond_0

    .line 275
    :goto_0
    return v0

    .line 272
    :cond_0
    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;

    invoke-direct {v2, p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V

    .line 273
    new-array v3, v1, [Lcom/android/camera/data/FilmstripItem;

    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public final findByContentUri(Landroid/net/Uri;)I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->indexOf(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 389
    .line 1177
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    .line 389
    return v0
.end method

.method public final getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method public final getItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 169
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 160
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, -0x1

    .line 164
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final getItemsInRange(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-object v1
.end method

.method public final getTotalNumber()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    return v0
.end method

.method public final getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p2}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 198
    iget v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedWidth:I

    iget v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/FilmstripItem;->setSuggestedSize(II)V

    .line 201
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 200
    invoke-interface {v0, v1, p0, v2, p3}, Lcom/android/camera/data/FilmstripItem;->createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final isMetadataUpdatedAt(I)Z
    .locals 1

    .prologue
    .line 152
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public final preloadItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_1
    return-object v1
.end method

.method public final refresh(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 287
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 291
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->refresh()Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 294
    if-nez v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public final removeAt(I)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->remove(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->executeDeletion()Z

    .line 222
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->isRendering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->notifier$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS24C5Q62JJFEHKMCQB5E8TG____:Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public final requestLoad(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/google/android/apps/camera/util/Callback;)V

    .line 126
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->context:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v1}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter$2;

    invoke-direct {v2, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$2;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 133
    return-void
.end method

.method public final requestLoadNewPhotos()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->lastPhotoId:J

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;JLcom/google/android/apps/camera/util/Callback;)V

    .line 107
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public final requestRemoveDeleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;B)V

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/camera/data/FilmstripItemList;

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    invoke-interface {v1}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter$1;

    invoke-direct {v2, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$1;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 121
    return-void
.end method

.method public final setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .line 102
    return-void
.end method

.method public final suggestViewSizeBound(II)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedWidth:I

    .line 188
    iput p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->suggestedHeight:I

    .line 189
    return-void
.end method

.method public final undoDeletion()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 262
    invoke-direct {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->insertItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 303
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {p2}, Lcom/android/camera/data/BurstItemData;->isItemPartOfBurst(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->filmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/FilmstripItemList;->set(ILcom/android/camera/data/FilmstripItem;)V

    .line 308
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/data/FilmstripItemAttributes$1;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V

    invoke-interface {p2, v0}, Lcom/android/camera/data/FilmstripItem;->setUpdateCallback$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94ALO68OBKCL1M2R3CC9GM6QPR55B0____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 315
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(Landroid/net/Uri;Z)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(Landroid/net/Uri;Z)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
