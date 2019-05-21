.class final Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
.super Ljava/lang/Object;
.source "PhotoCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoFrame"
.end annotation


# instance fields
.field public cameraToGL:[F

.field public cameraToWorld:[F

.field public count:I

.field public endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field public previewFadeInAlpha:F

.field public previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

.field public startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field public thumbnailLoaded:Z

.field public thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

.field public visible:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    .line 49
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 50
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 54
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailLoaded:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    .line 57
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;-><init>()V

    return-void
.end method
