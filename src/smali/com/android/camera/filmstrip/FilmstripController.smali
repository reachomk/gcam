.class public final Lcom/android/camera/filmstrip/FilmstripController;
.super Ljava/lang/Object;
.source "FilmstripController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

.field private final cameraActivityShim:Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;

.field private final cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private final filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

.field private final filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

.field private final filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

.field private final filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

.field private final fragmentManager:Landroid/app/FragmentManager;

.field private final indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final secureCamera:Z

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "FilmstripController"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/FilmstripController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/FilmstripBottomPanelController;Lcom/android/camera/filmstrip/FilmstripBadgeController;Lcom/android/camera/filmstrip/FilmstripDeleteController;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLandroid/content/Context;Landroid/app/FragmentManager;Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;Lcom/android/camera/storage/cache/SingleKeyCache;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Landroid/app/ActionBar;Lcom/android/camera/util/activity/SysUiFlagApplier;Lcom/android/camera/storage/Storage;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/filmstrip/FilmstripFragment;",
            "Lcom/android/camera/filmstrip/FilmstripBottomPanelController;",
            "Lcom/android/camera/filmstrip/FilmstripBadgeController;",
            "Lcom/android/camera/filmstrip/FilmstripDeleteController;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Z",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            "Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;",
            "Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;",
            "Landroid/app/ActionBar;",
            "Lcom/android/camera/util/activity/SysUiFlagApplier;",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p8, p0, Lcom/android/camera/filmstrip/FilmstripController;->fragmentManager:Landroid/app/FragmentManager;

    .line 100
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripFragment;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 101
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDeleteController;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    .line 104
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 105
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->activityContext:Landroid/content/Context;

    .line 106
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 107
    iput-object p10, p0, Lcom/android/camera/filmstrip/FilmstripController;->cameraActivityShim:Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;

    .line 108
    iput-boolean p6, p0, Lcom/android/camera/filmstrip/FilmstripController;->secureCamera:Z

    .line 109
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/cache/SingleKeyCache;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    .line 110
    invoke-static {p12}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/Storage;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->storage:Lcom/android/camera/storage/Storage;

    .line 114
    invoke-static/range {p16 .. p16}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 115
    invoke-static/range {p17 .. p17}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 116
    iget-object v0, p12, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    .line 117
    iget-object v0, p12, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iput-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    .line 118
    return-void
.end method


# virtual methods
.method public final getCaptureIndicatorBitmapOrNull()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->indicatorCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-virtual {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->get()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/cache/OrientationBitmap;

    .line 178
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v0, v0, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_1
    sget-object v1, Lcom/android/camera/filmstrip/FilmstripController;->TAG:Ljava/lang/String;

    const-string v2, "getCaptureIndicatorBitmapOrNull() failed to get bitmap from capture indicator cache."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final initializeData()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/bumptech/glide/MemoryCategory;->HIGH:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Glide;->setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)V

    .line 124
    return-void
.end method

.method public final isSecureCamera()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->secureCamera:Z

    return v0
.end method

.method public final onSessionUpdated(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->isFilmstripVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripView:Lcom/android/camera/filmstrip/widget/FilmstripView;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    .line 215
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->storage:Lcom/android/camera/storage/Storage;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/storage/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripLayout:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->onFirstItemThumbnailUpdated(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final removeDeleted()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestRemoveDeleted()V

    .line 261
    return-void
.end method

.method public final removeFilmstripItem(Lcom/android/camera/data/FilmstripItem;)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 163
    if-ltz v0, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/FilmstripController;->removeItemAt(I)V

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in filmstrip data adapter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeItemAt(I)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->cameraServices$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T1M2RB5E9GL6PBIEPKM6PBJ7C______:Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 139
    invoke-virtual {v1}, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/session/CaptureSessionManager;->getSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->delete()V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 150
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1127
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->secureCamera:Z

    .line 150
    if-eqz v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->cameraActivityShim:Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripCameraActivityControllerShim;->purgeIndicatorCache()V

    .line 153
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->removeAt(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->filmstripDeleteController:Lcom/android/camera/filmstrip/FilmstripDeleteController;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripDeleteController;->showUndoDeletion()V

    goto :goto_0
.end method

.method public final showBurstEditor(Lcom/android/camera/data/BurstItem;)V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripController;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    new-instance v3, Ljava/io/File;

    .line 236
    invoke-virtual {p1}, Lcom/android/camera/data/BurstItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/filmstrip/FilmstripController;->activityContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/camera/filmstrip/FilmstripController;->storage:Lcom/android/camera/storage/Storage;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;-><init>(Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;Ljava/io/File;Landroid/content/Context;Lcom/android/camera/storage/Storage;)V

    .line 239
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->fragmentManager:Landroid/app/FragmentManager;

    const-string v2, "burst_editor_fragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;->updateAvailableCreationsAsync()V

    .line 247
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

    if-nez v1, :cond_1

    .line 2127
    iget-boolean v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->secureCamera:Z

    .line 248
    invoke-static {p0, v1}, Lcom/android/camera/burst/editor/BurstEditorFragment;->newInitializedInstance(Lcom/android/camera/filmstrip/FilmstripController;Z)Lcom/android/camera/burst/editor/BurstEditorFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

    .line 249
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->dataAdapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripController;->burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->loadBurstData(Lcom/android/camera/data/BurstItem;Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripController;->burstEditorFragment:Lcom/android/camera/burst/editor/BurstEditorFragment;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripController;->fragmentManager:Landroid/app/FragmentManager;

    const-string v2, "burst_editor_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/burst/editor/BurstEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
