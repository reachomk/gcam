.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;
.super Ljava/lang/Object;
.source "AllSmilesArtifact.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditFacesFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private final mFaceEditor:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 237
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;->mFaceEditor:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;

    .line 238
    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    .line 1243
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;->mFaceEditor:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->createAllSmiles(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Z)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$EditFacesFunction;->mFaceEditor:Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->getBestInputBitmapTimestamp()J

    move-result-wide v2

    .line 1245
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 229
    return-object v0
.end method
