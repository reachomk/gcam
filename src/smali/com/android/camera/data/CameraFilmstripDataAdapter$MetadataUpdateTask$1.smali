.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$updatedData:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDataUpdated(I)Z
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
