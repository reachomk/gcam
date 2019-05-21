.class final Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static sPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA1DPKMQOBKDTP28IBKCLMKGRRCCHIN4IBECPNJM___:Lcom/adobe/xmp/impl/xpath/XMPPathParser;

.field preInfo$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA1DPKMQOBKDTP28IBKCLMKGRRCCHIN4IBECPNJM___:Lcom/adobe/xmp/impl/xpath/XMPPathParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method static obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 314
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;-><init>()V

    :cond_0
    return-object v0
.end method

.method static recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 319
    iput-object v1, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA1DPKMQOBKDTP28IBKCLMKGRRCCHIN4IBECPNJM___:Lcom/adobe/xmp/impl/xpath/XMPPathParser;

    .line 320
    iput-object v1, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNL4PB3F5HMOPBIAPKMATP495Q6ARA1DPKMQOBKDTP28IBKCLMKGRRCCHIN4IBECPNJM___:Lcom/adobe/xmp/impl/xpath/XMPPathParser;

    .line 321
    sget-object v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method
