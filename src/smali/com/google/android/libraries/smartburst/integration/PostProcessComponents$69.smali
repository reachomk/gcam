.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$69;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->configureCommon(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$69;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1597
    .line 2600
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$69;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 1597
    return-object v0
.end method
