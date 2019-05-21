.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$PasteEditedBitmapIntoBestBitmapFunction$LoadBestPhotoFunction;
.super Ljava/lang/Object;
.source "AllSmilesArtifact.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$PasteEditedBitmapIntoBestBitmapFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadBestPhotoFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$PasteEditedBitmapIntoBestBitmapFunction$LoadBestPhotoFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 299
    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 294
    check-cast p1, Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    .line 1303
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$PasteEditedBitmapIntoBestBitmapFunction$LoadBestPhotoFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/smartburst/media/BitmapLoader;->load(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 294
    return-object v0
.end method
