.class public final Lcom/android/camera/storage/MediaSaverImpl_Factory;
.super Ljava/lang/Object;
.source "MediaSaverImpl_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/Storage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/storage/MediaSaverImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/android/camera/storage/MediaSaverImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1024
    new-instance v2, Lcom/android/camera/storage/MediaSaverImpl;

    iget-object v0, p0, Lcom/android/camera/storage/MediaSaverImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/storage/MediaSaverImpl_Factory;->storageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/Storage;

    invoke-direct {v2, v0, v1}, Lcom/android/camera/storage/MediaSaverImpl;-><init>(Landroid/content/ContentResolver;Lcom/android/camera/storage/Storage;)V

    .line 8
    return-object v2
.end method
