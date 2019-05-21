.class public final Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;
.super Landroid/support/v8/renderscript/Script$FieldBase;
.source "ScriptField_KernelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

.field private mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/support/v8/renderscript/Script$FieldBase;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    .line 61
    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    .line 1046
    new-instance v0, Landroid/support/v8/renderscript/Element$Builder;

    invoke-direct {v0, p1}, Landroid/support/v8/renderscript/Element$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    .line 1047
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;

    .line 1048
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    const-string v2, "radius_x"

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;

    .line 1049
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    const-string v2, "radius_y"

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;

    .line 1050
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element$Builder;->create()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->init(Landroid/support/v8/renderscript/RenderScript;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final declared-synchronized get_offset(I)I
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_offset(IIZ)V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    new-instance v1, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;-><init>()V

    aput-object v1, v0, p1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;->offset:I

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->reset(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 149
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 150
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_radius_x(IIZ)V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    new-instance v1, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;-><init>()V

    aput-object v1, v0, p1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->reset(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 164
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set_radius_y(IIZ)V
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    iput-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mItemArray:[Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    new-instance v1, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo$Item;-><init>()V

    aput-object v1, v0, p1

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;->reset(I)V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mIOBuffer:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 179
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 180
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v8/renderscript/Allocation;->setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
