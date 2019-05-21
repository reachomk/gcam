.class public Lcom/google/android/libraries/smartburst/utils/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# instance fields
.field private final filmstripThumbnail:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final roundedThumbnail:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/Functions;->roundedThumbnail:Lcom/google/common/base/Optional;

    .line 1026
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/utils/Functions;->filmstripThumbnail:Lcom/google/common/base/Optional;

    .line 1027
    return-void
.end method

.method public static closeInput()Lcom/google/android/libraries/smartburst/utils/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            ">()",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TT;",
            "Lcom/google/android/libraries/smartburst/utils/Empty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Functions$3;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/utils/Functions$3;-><init>()V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/utils/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Functions$5;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/utils/Functions$5;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getHandleValue()Lcom/google/android/libraries/smartburst/utils/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handle",
            "<TT;>;TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Functions$7;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/utils/Functions$7;-><init>()V

    return-object v0
.end method

.method public static identity()Lcom/google/android/libraries/smartburst/utils/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/libraries/smartburst/utils/Function",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/Functions$4;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/utils/Functions$4;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFilmstripThumbnail()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/Functions;->filmstripThumbnail:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getRoundedThumbnail()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/Functions;->roundedThumbnail:Lcom/google/common/base/Optional;

    return-object v0
.end method
